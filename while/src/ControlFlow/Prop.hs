{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveFunctor #-}
module ControlFlow.Prop where

import WhileLanguage
import qualified ConcreteSemantics as Concrete

import Data.Text (Text)
import Data.GaloisConnection
import Data.Order
import Data.Powerset
import Data.Hashable
import Data.Traversable

import Data.Map (Map)
import qualified Data.Map as M
import Data.IntMap (IntMap)
import qualified Data.IntMap as IM
import Data.Set (Set)
import qualified Data.Set as Set

import GHC.Generics (Generic)


---------------
-- concrete
---------------

data TraceElem v = TrAssign Label v | TrIf Label v
  deriving (Show,Eq,Generic,Functor)

trLabel :: TraceElem v -> Label
trLabel (TrAssign l _) = l
trLabel (TrIf l _) = l

instance Hashable v => Hashable (TraceElem v)

instance PreOrd v => PreOrd (TraceElem v) where
  (TrAssign l1 v1) ⊑ (TrAssign l2 v2) = l1==l2 && v1 ⊑ v2
  (TrIf l1 v1) ⊑ (TrIf l2 v2) = l1==l2 && v1 ⊑ v2
  _ ⊑ _ = False

type CProp = [TraceElem Concrete.Val]
initCProp :: CProp
initCProp = []

type LiftedCProp = Pow [TraceElem (Pow Concrete.Val)]
liftCProp :: CProp -> LiftedCProp
liftCProp = singleton . map (fmap singleton)


---------------
-- abstract
---------------

data CFGNode v = CFGAssign Label v | CFGIf Label v
  deriving (Show,Eq)

labelCFG :: CFGNode v -> Label
labelCFG (CFGAssign l _) = l
labelCFG (CFGIf l _) = l

type CFGNodes v = IntMap (CFGNode v)

data CFG v = CFG {entry :: Set Int, exit :: Set Int, nodes :: CFGNodes v, edges :: Set (Int,Int)}
  deriving (Show,Eq)

singletonCFG :: CFGNode v -> CFG v
singletonCFG n = CFG (Set.singleton l) (Set.singleton l) (IM.singleton l n) Set.empty
  where Label l = labelCFG n

instance Monoid (CFG v) where
  mempty = CFG Set.empty Set.empty IM.empty Set.empty

  mappend g1 g2 | IM.null (nodes g1) = g2
  mappend g1 g2 | IM.null (nodes g2) = g1
  mappend (CFG en1 ex1 no1 ed1) (CFG en2 ex2 no2 ed2) =
    CFG en1 ex2 (IM.union no1 no2) (ed1 `Set.union` ed2 `Set.union` connects)
    where
      connects :: Set (Int,Int)
      connects = Set.fromList [(ex,en) | ex <- Set.toList ex1, en <- Set.toList en2]

instance PreOrd v => PreOrd (CFGNode v) where
  (CFGAssign l1 v1) ⊑ (CFGAssign l2 v2) = l1==l2 && v1⊑v2
  (CFGIf l1 v1) ⊑ (CFGIf l2 v2) = l1==l2 && v1⊑v2
  _ ⊑ _ = False

  (CFGAssign l1 v1) ≈ (CFGAssign l2 v2) = l1==l2 && v1≈v2
  (CFGIf l1 v1) ≈ (CFGIf l2 v2) = l1==l2 && v1≈v2
  _ ≈ _ = False

instance PreOrd v => PreOrd (CFG v) where
  -- TODO: implement proper subgraph check
  (CFG en1 ex1 no1 ed1) ⊑ (CFG en2 ex2 no2 ed2) =
    en1 ⊑ en2 &&
    ex1 ⊑ ex2 &&
    no1 ⊑ no2 &&
    ed1 ⊑ ed2

instance Complete v => Complete (CFG v) where
  (CFG en1 ex1 no1 ed1) ⊔ (CFG en2 ex2 no2 ed2) =
      CFG (en1 `Set.union` en2) (ex1 `Set.union` ex2) (IM.unionWith partialJoin no1 no2) (ed1 `Set.union` ed2)
    where (CFGAssign l1 v1) `partialJoin` (CFGAssign l2 v2) | l1 == l2 = CFGAssign l1 $ v1 ⊔ v2
          (CFGIf l1 v1) `partialJoin` (CFGIf l2 v2) | l1 == l2 = CFGIf l1 $ v1 ⊔ v2

instance PreOrd v => LowerBounded (CFG v) where
  bottom = CFG Set.empty Set.empty IM.empty Set.empty

type AProp v = CFG v
initAProp :: AProp v
initAProp = mempty

pushNode :: CFGNode v -> AProp v -> AProp v
pushNode node p = p `mappend` (singletonCFG node)


---------------
-- Galois
---------------

instance (Galois (Pow Concrete.Val) v,Complete v,LowerBounded v) => Galois (Pow [TraceElem (Pow Concrete.Val)]) (CFG v) where
  alpha = lifted lift
    where lift elems = CFG (entry elems) (exit elems) (nodes elems) (edges elems)

          entry [] = Set.empty
          entry (e:_) = Set.singleton $ labelVal $ trLabel e

          exit [] = Set.empty
          exit es = Set.singleton $ labelVal $ trLabel $ last es

          nodes elems = IM.fromList $ map mkNode elems

          edges [] = Set.empty
          edges [e] = Set.empty
          edges (e1:e2:es) = Set.insert (labelVal $ trLabel e1,labelVal $ trLabel e2) $ edges (e2:es)

          mkNode (TrAssign (Label l) v) = (l,CFGAssign (Label l) $ alpha v)
          mkNode (TrIf (Label l) v) = (l, CFGIf (Label l) $ alpha v)

  gamma  (CFG en ex nodes edges) = foldr (union . walk []) empty en
    where walk :: [TraceElem (Pow Concrete.Val)] -> Int -> Pow [TraceElem (Pow Concrete.Val)]
          walk path n =
            let end = if Set.member n ex then singleton $ reverse path else empty
                outs = Set.map snd $ Set.filter (\(m,_) -> m == n) edges
            in end `union` foldr (union . walk (mkTraceElem n : path)) empty outs

          mkTraceElem n = case nodes IM.! n of
            CFGAssign l v -> TrAssign l $ gamma v
            CFGIf l v -> TrIf l $ gamma v

