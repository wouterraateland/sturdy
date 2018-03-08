{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}
module Data.Powerset where

import           Prelude hiding ((.),seq)

import           Control.Category
import           Control.Applicative
import           Control.Monad
import           Control.Monad.Deduplicate

import           Data.Sequence (Seq)
import           Data.Set (Set)
import           Data.Map (Map)
import           Data.Hashable
import           Data.HashSet (HashSet)
import qualified Data.HashSet as H
import           Data.Foldable (foldl',toList)
import           Data.List (intercalate)
import           Data.Order
import           Data.Widening

import GHC.Generics (Generic)

newtype Pow a = Pow (Seq a) deriving (Functor, Applicative, Monad, Alternative, MonadPlus, Monoid, Foldable, Traversable, Generic)

instance (Eq a, Hashable a) => PreOrd (Pow a) where
  as ⊑ bs = all (`H.member` toHashSet as) (toHashSet bs)

instance (Eq a, Hashable a) => LowerBounded (Pow a) where
  bottom = mempty

instance (Eq a, Hashable a) => Eq (Pow a) where
  as == bs = toHashSet as == toHashSet bs

instance (Eq a, Hashable a) => Complete (Pow a) where
  as ⊔ bs = as `union` bs

instance (Eq a, Hashable a) => Widening (Pow a)

instance Show a => Show (Pow a) where
  show (Pow a) = "{" ++ intercalate ", " (show <$> toList a) ++ "}"

instance (Eq a, Hashable a) => Hashable (Pow a) where
  hashWithSalt salt x = hashWithSalt salt (toHashSet x)

instance Hashable a => Hashable (Set a) where
  hashWithSalt salt seq = foldl hashWithSalt salt seq

instance Hashable v => Hashable (Map k v) where
  hashWithSalt salt seq = foldl hashWithSalt salt seq

empty :: Pow a
empty = mempty

singleton :: a -> Pow a
singleton = Pow . return

union :: Pow a -> Pow a -> Pow a
union = mappend

cartesian :: (Pow a, Pow b) -> Pow (a,b)
cartesian (as,bs) = do
  a <- as
  b <- bs
  return (a,b)

toHashSet :: (Hashable a, Eq a) => Pow a -> HashSet a
toHashSet = foldl' (flip H.insert) H.empty

fromFoldable :: (Foldable f, Monad t, Monoid (t a)) => f a -> t a
fromFoldable = foldMap return

size :: Foldable f => f a -> Int
size = length

instance MonadDeduplicate Pow where
  dedup = fromFoldable . toHashSet

dedup :: (Hashable a, Eq a) => Pow a -> Pow a
dedup = fromFoldable . toHashSet

powmap :: (a -> b) -> Pow a -> Pow b
powmap = fmap
