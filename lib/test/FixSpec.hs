{-# LANGUAGE Arrows #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE DeriveGeneric #-}
module FixSpec where

import           Prelude hiding (lookup,Bounded,Bool(..))

import           Control.Arrow
import           Control.Arrow.Fix
import           Control.Arrow.Transformer.Abstract.Fix
import           Control.Arrow.Transformer.Abstract.Except
import           Control.Arrow.Transformer.Abstract.Floor
import           Control.Arrow.Transformer.State
import           Control.Arrow.Fail
import           Control.Arrow.State

import           Data.Boolean(Logic(..))
import           Data.Abstract.Boolean(Bool)
import           Data.Abstract.Bounded
import           Data.Abstract.Error
import           Data.Hashable
import           Data.Abstract.InfiniteNumbers
import           Data.Abstract.Interval (Interval)
import qualified Data.Abstract.Interval as I
import           Data.Order
import           Data.Abstract.Sign (Sign)
import           Data.Abstract.Floored (Floored)
import qualified Data.Abstract.Store as S
import           GHC.Generics

import           Test.Hspec

main :: IO ()
main = hspec spec

type Cache x y = Floor (Fix x (Floored y)) x y
type ErrorFix x y = Except () (Fix x (Error () y)) x y
type StateFix x y = State IV (Floor (Fix (IV,x) (Floored (IV,y)))) x y
type IV = Bounded (Interval (InfiniteNumber Int))

spec :: Spec
spec = do
  describe "the analysis of the fibonacci numbers" $
    let fib :: Cache IV IV -> Cache IV IV
        fib f =
          ifLowerThan 0
            (proc _ -> returnA -< bounded 0 0)
            (ifLowerThan 1 (proc _ -> returnA -< bounded 1 1)
                           (proc n -> do
                              x <- f -< n - bounded 1 1
                              y <- f -< n - bounded 2 2
                              returnA -< x + y))
        bounded i j = Bounded (I.Interval (-500) 500) (I.Interval i j)

    in it "should memoize numbers that have been computed before already" $ do
         runFix (runFloor (fixA fib :: Cache IV IV)) (bounded 5 10) `shouldBe` return (bounded 5 55)
         runFix (runFloor (fixA fib :: Cache IV IV)) (bounded 0 Infinity) `shouldBe` return (bounded NegInfinity Infinity)

  describe "the analysis of the factorial function" $
    let fact f = proc n -> do
          ifLowerThan 1 (proc _ -> returnA -< bounded 1 1)
                        (proc n -> do {x <- f -< (n-bounded 1 1); returnA -< n * x}) -< n
        bounded i j = Bounded (I.Interval NegInfinity Infinity) (I.Interval i j)
    in it "fact [-inf,inf] should produce [1,inf]" $

         runFix (runFloor (fixA fact :: Cache IV IV)) (bounded NegInfinity Infinity)
           `shouldBe` return (bounded 1 Infinity)

  describe "the even and odd functions" $
    let evenOdd :: Cache (EvenOdd,IV) Bool -> Cache (EvenOdd,IV) Bool
        evenOdd f = proc (e,x) -> case e of
          Even -> ifLowerThan 0 (proc _ -> returnA -< true)
                                (ifLowerThan 1 (proc _ -> returnA -< false)
                                               (proc x -> f -< (Odd,x-bounded 1 1))) -< x
          Odd -> ifLowerThan 0 (proc _ -> returnA -< false)
                                (ifLowerThan 1 (proc _ -> returnA -< true)
                                               (proc x -> f -< (Even,x-bounded 1 1))) -< x

        bounded i j = Bounded (I.Interval NegInfinity Infinity) (I.Interval i j)
    in it "even([-inf,inf]) should produce top" $
         runFix (runFloor (fixA evenOdd)) (Even,bounded 0 Infinity) `shouldBe` top

  describe "the ackermann function" $
    let ackermann :: Cache (IV,IV) IV -> Cache (IV,IV) IV
        ackermann f = proc (m,n) ->
           ifLowerThan 0 (proc _ -> returnA -< n + bounded 1 1)
                         (proc m' -> ifLowerThan 0 (proc _ -> f -< (m'- bounded 1 1, bounded 1 1))
                                                   (proc n' -> do x <- f -< (m,n'-bounded 1 1)
                                                                  f -< (m'- bounded 1 1,x)) -<< n) -<< m

        bounded i j = Bounded (I.Interval (-50) 50) (I.Interval i j)
    in it "ackerman ([0,inf], [0,inf]) should be [0,inf] " $ do
         runFix (runFloor (fixA ackermann)) (bounded 0 Infinity, bounded 0 Infinity)
           `shouldBe` return (bounded NegInfinity Infinity)

  describe "the analyis of a diverging program" $
    let diverge :: Cache Int Sign -> Cache Int Sign
        diverge f = proc n -> case n of
          0 -> f -< 0
          _ -> f -< (n-1)
    in it "should terminate with bottom" $
         runFix (runFloor (fixA diverge)) 5
           `shouldBe` bottom

  describe "the analysis of a failing program" $
    let recurseFail :: ErrorFix Int Sign -> ErrorFix Int Sign
        recurseFail f = proc n -> case n of
          0 -> failA -< ()
          _ -> f -< (n-1)
    in it "should fail, but update the fixpoint cache" $
         runFix' (runExcept (fixA recurseFail)) 5
            `shouldBe` (S.fromList [(n,Fail ()) | n <- [0..5]], Fail ())

  describe "the analysis of a stateful program" $
    let timesTwo :: StateFix IV () -> StateFix IV ()
        timesTwo f = proc n -> case n of
          Bounded (I.Interval (-50) 50) (I.Interval 0 0) -> returnA -< ()
          _ -> do
            s <- getA -< ()
            putA -< s + bounded 1
            f -< (n- bounded 1)
            s' <- getA -< ()
            putA -< s'+ bounded 1

        bounded = Bounded (I.Interval (-50) 50) . fromIntegral
    in it "should cache the state of the program" $
         runFix' (runFloor (runState (fixA timesTwo))) (bounded 0,bounded 5) `shouldBe`
           (S.fromList [((bounded n,bounded 5-bounded n),return (bounded 10-bounded n,())) | n <- [0..5::Int]],
                 return (bounded 10,()))
  where

    ifLowerThan :: (Num n, Ord n, ArrowChoice c, Complete (c (Bounded (Interval n), Bounded (Interval n)) x)) => n -> c (Bounded (Interval n)) x -> c (Bounded (Interval n)) x -> c (Bounded (Interval n)) x
    ifLowerThan l f g = proc b@(Bounded o x) -> case x of
      I.Interval m n
        | n <= l -> f -< b
        | l < m -> g -< b
        | m <= l && l+1 <= n -> joined f g -< (Bounded o (I.Interval m l), Bounded o (I.Interval (l+1) n))
        | otherwise -> f -< Bounded o (I.Interval m l)

data EvenOdd = Even | Odd deriving (Eq,Generic,Show)
instance Hashable EvenOdd
