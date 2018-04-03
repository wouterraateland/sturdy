{-# LANGUAGE DeriveGeneric #-}
module Data.Abstract.Boolean where

import Prelude hiding (Bool(..))
import qualified Prelude as P

import Data.Abstract.Widening
import Data.Boolean
import Data.Hashable
import Data.Order

import GHC.Generics

data Bool = True | False | Top deriving (Eq,Generic)

instance Show Bool where
  show True = "True"
  show False = "False"
  show Top = "⊤"

instance Logic Bool where
  true = True
  false = False
  and b1 b2 = case (b1,b2) of
    (True,True) -> true
    (False,_) -> false
    (_,False) -> false
    (_,_) -> Top
  or b1 b2 = case (b1,b2) of
    (True,_) -> true
    (_,True) -> true
    (False,False) -> false
    (_,_) -> Top
  not b = case b of
    True -> false
    False -> true
    Top -> Top

instance PreOrd Bool where
  _ ⊑ Top = P.True
  True ⊑ True = P.True
  False ⊑ False = P.True
  _ ⊑ _ = P.False

instance Complete Bool where
  Top ⊔ _ = Top
  _ ⊔ Top = Top
  True ⊔ True = True
  False ⊔ False = False
  _ ⊔ _ = Top

instance UpperBounded Bool where
  top = Top

instance Widening Bool where

instance Hashable Bool
