{-# LANGUAGE Arrows #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}
module GrammarSemantics where

import           SharedSemantics hiding (all)
import           Signature hiding (Top)
import           Syntax hiding (Fail)
import           Utils

import           Control.Arrow
import           Control.Arrow.Deduplicate
import           Control.Arrow.Fail
import           Control.Arrow.Fix
import           Control.Arrow.Reader
import           Control.Arrow.State
import           Control.Arrow.Try
import           Control.Arrow.Transformer.Abstract.Uncertain
import           Control.Arrow.Transformer.Reader
import           Control.Arrow.Transformer.State
import           Control.Category hiding ((.))

import           Data.Abstract.FreeCompletion
import           Data.Abstract.UncertainResult
import           Data.Constructor
import           Data.Foldable (foldr')
import           Data.HashMap.Lazy (HashMap)
import qualified Data.HashMap.Lazy as LM
import           Data.Hashable
import qualified Data.Map as M
import           Data.Order
import           Data.Term hiding (wildcard)
import           Data.TermEnv

import           TreeAutomata

type Term = FreeCompletion Grammar

newtype TermEnv = TermEnv (HashMap TermVar Term) deriving (Show, Eq, Hashable)
newtype Interp a b = Interp (Reader (StratEnv, Int) (State TermEnv (Uncertain (->))) a b)
  deriving (Arrow, ArrowApply, ArrowChoice, ArrowDeduplicate, ArrowPlus, ArrowZero, Category, Complete, PreOrd)

runInterp :: Interp a b -> Int -> StratEnv -> TermEnv -> a -> UncertainResult (TermEnv, b)
runInterp (Interp f) i senv tenv a = runUncertain (runState (runReader f)) (tenv, ((senv, i), a))

eval :: Int -> Strat -> StratEnv -> TermEnv -> Term -> UncertainResult (TermEnv, Term)
eval i s = runInterp (eval' s) i

-- Create grammars -----------------------------------------------------------------------------------

sortToName :: Sort -> Name
sortToName sort = case sort of
  Sort (SortId name) -> name
  _ -> error "Parametric polymorphism is not yet supported"

toRhs :: (Constructor,Fun) -> Rhs
toRhs (Constructor constr, Fun sorts _) = Ctor constr (map sortToName sorts)

toProd :: (Sort, [(Constructor,Fun)]) -> (Name, [Rhs])
toProd (sort, rhs) = (sortToName sort, map toRhs rhs)

createGrammar :: Signature -> Grammar
createGrammar (Signature (_, sorts) _) = Grammar start prods
  where
    start = "Start"
    startProd = (start, map (Eps . sortToName) (LM.keys sorts))
    builtins = [("String", [ Ctor "String" []]), ("INT", [ Ctor "INT" []])]
    prods = M.fromList $ startProd : map toProd (LM.toList sorts) ++ builtins

-- Instances -----------------------------------------------------------------------------------------
deriving instance ArrowReader (StratEnv, Int) Interp
deriving instance ArrowState TermEnv Interp

instance Complete z => ArrowTry x y z Interp where
  tryA (Interp f) (Interp g) (Interp h) = Interp (tryA f g h)

instance PreOrd Grammar where
  (⊑) = subsetOf

instance Complete Grammar where
  (⊔) = union

instance PreOrd TermEnv where
  TermEnv env1 ⊑ TermEnv env2 =
    all (\v -> fromMaybe (LM.lookup v env1) ⊑ fromMaybe (LM.lookup v env2)) (dom env2)

instance Complete TermEnv where
  TermEnv env1' ⊔ TermEnv env2' = go (dom env1') env1' env2' LM.empty
    where
      go vars env1 env2 env3 = case vars of
        (v:vs) -> case (LM.lookup v env1, LM.lookup v env2) of
          (Just t1, Just t2) -> go vs env1 env2 (LM.insert v (t1 ⊔ t2) env3)
          _                  -> go vs env1 env2 env3
        [] -> TermEnv env3

instance ArrowFix' Interp Term where
  -- TODO: this should be rewritten to use the fixpoint caching algorithm.
  fixA' f z = proc x -> do
    i <- getFuel -< ()
    if i <= 0
    then top -< ()
    else do
      env <- askA >>^ fst -< ()
      localFuel (f (fixA' f) z) -< ((env,i-1),x)
    where
      getFuel = Interp (askA >>^ snd)
      localFuel (Interp g) = Interp $ proc ((env,i),a) -> localA g -< ((env,i),a)

instance UpperBounded (Interp () Term) where
  -- TODO: We can be more precise here by returning `wildcard ctxt`, where `ctxt`
  -- is the constructorInfo of the current subject grammar. There is, however, no
  -- way of obtaining this signature. If there turns out to be, we can get rid
  -- of the `Term` type and go back to directly using `Grammar`s instead.
  top = proc () -> success ⊔ failA' -< Top

instance ArrowFail () Interp where
  failA = Interp failA

instance HasStratEnv Interp where
  readStratEnv = Interp (const () ^>> askA >>^ fst)
  localStratEnv senv f = proc a -> do
    i <- (askA >>^ snd) -< ()
    r <- localA f -< ((senv,i),a)
    returnA -< r

instance IsTerm Term Interp where
  matchTermAgainstConstructor matchSubterms = proc (Constructor c,ts,t) -> case t of
    Lower a -> let (Grammar s ps) = epsilonClosure a
      in case M.lookup s ps of
      Just rhss -> do
        let gs = [ Lower (Grammar nt ps) | Ctor c' ts' <- rhss, c == c', eqLength ts ts', nt <- ts' ]
        _ <- matchSubterms -< (ts, gs)
        returnA -< t
      Nothing -> failA -< ()
    Top -> do
      _ <- matchSubterms -< (ts, [ Top | _ <- [1 .. length ts]])
      returnA ⊔ failA' -< t

  matchTermAgainstExplode matchCons matchSubterms = undefined

  matchTermAgainstNumber = proc (_,t) -> case t of
    Lower a -> let (Grammar s ps) = epsilonClosure a
      in case M.lookup s ps of
      Just rhss -> if elem (Ctor "INT" []) rhss
        then returnA -< t
        else failA -< ()
      Nothing -> failA -< ()
    Top -> success ⊔ failA' -< numberGrammar

  matchTermAgainstString = proc (_,t) -> case t of
    Lower a -> let (Grammar s ps) = epsilonClosure a
      in case M.lookup s ps of
      Just rhss -> if elem (Ctor "String" []) rhss
        then returnA -< t
        else failA -< ()
      Nothing -> failA -< ()
    Top -> returnA ⊔ failA' -< stringGrammar

  equal = proc (t1,t2) -> if t1 == t2
    then returnA -< t1
    else failA -< ()

  convertFromList = undefined
  mapSubterms f = undefined

  cons = proc (Constructor c,ts) -> let start = uniqueStart () in if null ts
    then returnA -< Lower (Grammar start $ M.fromList [(start, [ Ctor c [] ])])
    else let ss = [ s | Lower (Grammar s _) <- ts ]
             (Grammar _ ps) = foldr1 union [ g | Lower g <- ts ]
         in returnA -< Lower (Grammar start $ M.insertWith (++) start [ Ctor c ss ] ps)

  numberLiteral = proc _ -> returnA -< numberGrammar
  stringLiteral = proc _ -> returnA -< stringGrammar

instance IsTermEnv TermEnv Term Interp where
  getTermEnv = getA
  putTermEnv = putA
  lookupTermVar f g = proc (v,TermEnv env) ->
    case LM.lookup v env of
      Just t -> f -< t
      Nothing ->
        (proc () -> do
          putTermEnv -< TermEnv (LM.insert v Top env)
          f -< Top)
        ⊔ g
        -<< ()
  insertTerm = arr $ \(v,t,TermEnv env) -> TermEnv (LM.insert v t env)
  deleteTermVars = arr $ \(vars,TermEnv env) -> TermEnv (foldr' LM.delete env vars)
  unionTermEnvs = arr (\(vars,TermEnv e1,TermEnv e2) -> TermEnv (LM.union e1 (foldr' LM.delete e2 vars)))

-- Helpers -------------------------------------------------------------------------------------------
dom :: HashMap TermVar t -> [TermVar]
dom = LM.keys

stringGrammar :: Term
stringGrammar = Lower (Grammar start prods) where
  start = uniqueStart ()
  prods = M.fromList [(start, [ Eps "String" ])
                     ,("String", [ Ctor "String" []])]

numberGrammar :: Term
numberGrammar = Lower (Grammar start prods) where
  start = uniqueStart ()
  prods = M.fromList [(start, [ Eps "INT" ])
                     ,("INT", [ Ctor "INT" []])]
