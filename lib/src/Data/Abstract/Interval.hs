{-# LANGUAGE DeriveGeneric #-}
module Data.Abstract.Interval where

import Data.Hashable
import Data.Order
import GHC.Generics

-- | Intervals represent ranges of numbers. Bot represents the empty interval
data Interval n = Interval n n
  deriving (Eq,Generic)

instance Show n => Show (Interval n) where
  show (Interval n m) = "["++ show n ++ "," ++ show m ++"]"

instance Ord x => PreOrd (Interval x) where
  Interval i1 i2 ⊑ Interval j1 j2 = j1 <= i1 && i2 <= j2

instance Ord x => Complete (Interval x) where
  Interval i1 i2 ⊔  Interval j1 j2 = Interval (min i1 j1) (max i2 j2)

instance (Num n, Ord n) => Num (Interval n) where
  Interval i1 i2 + Interval j1 j2 = Interval (i1 + j1) (i2+ j2)
  (*) = withBounds2 (*)
  negate (Interval i1 i2) = Interval (negate i2) (negate i1)
  abs (Interval i j)
    | 0 <= i = Interval i j
    | otherwise = Interval 0 (max i j)
  signum = withBounds1 signum
  fromInteger = constant . fromInteger

instance (Fractional n, Ord n, LowerBounded n, UpperBounded n) => Fractional (Interval n) where
  Interval i1 i2 / Interval j1 j2
    | j1 <= 0 && 0 <= j2 = Interval bottom top
    | otherwise = withBounds2 (/) (Interval i1 i2) (Interval j1 j2)
  fromRational = constant . fromRational

instance Hashable n => Hashable (Interval n)

constant :: n -> Interval n
constant x = Interval x x

withBounds1 :: Ord n => (n -> n) -> Interval n -> Interval n
withBounds1 f (Interval i1 i2) = Interval (min (f i1) (f i2)) (max (f i1) (f i2))

withBounds2 :: Ord n => (n -> n -> n) -> Interval n -> Interval n -> Interval n
withBounds2 f (Interval i1 i2) (Interval j1 j2) =
    Interval (minimum [ f x y | x <- [i1,i2], y <- [j1,j2]]) 
             (maximum [ f x y | x <- [i1,i2], y <- [j1,j2]])

instance (Ord n, Bounded n) => UpperBounded (Interval n) where
  top = Interval minBound maxBound
