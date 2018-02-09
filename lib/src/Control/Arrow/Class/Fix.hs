{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE FlexibleInstances #-}
module Control.Arrow.Class.Fix(ArrowFix(..),ArrowFix'(..)) where

import Control.Arrow

class Arrow c => ArrowFix x y c | c -> y, c -> x where
  fixA :: (c x y -> c x y) -> c x y

class Arrow c => ArrowFix' c y | c -> y where
  fixA' :: ((z -> c x y) -> (z -> c x y)) -> (z -> c x y)