module ConcreteSpec where

import Concrete
import Syntax

import qualified Data.Map as Map

import Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Literals" $ do
    it "LocalName lookup" $ do
      let expr = EImmediate (ILocalName "x")
      let st = (Map.empty, Map.fromList [("x", Just (VInt 2))])
      eval' st expr `shouldBe` Right (VInt 2)
    it "Integer literals" $ do
      let expr = EImmediate (IInt 7)
      eval' store expr `shouldBe` Right (VInt 7)
    it "Float literals" $ do
      let expr = EImmediate (IFloat 2.5)
      eval' store expr `shouldBe` Right (VFloat 2.5)
    it "String literals" $ do
      let expr = EImmediate (IString "Hello World")
      eval' store expr `shouldBe` Right (VString "Hello World")
    it "Class literals" $ do
      let expr = EImmediate (IClass "java.lang.Object")
      eval' store expr `shouldBe` Right (VClass "java.lang.Object")
    it "Null literals" $ do
      let expr = EImmediate (INull)
      eval' store expr `shouldBe` Right (VNull)

  describe "Simple Expressions" $ do
    it "-3" $ do
      let expr = EUnop Neg (IInt 3)
      eval' store expr `shouldBe` Right (VInt (-3))
    it "lengthof [1, 2, 3]" $ do
      let expr = EUnop Lengthof (ILocalName "x")
      let st = (Map.empty, Map.fromList [("x", Just (VArray [VInt 1, VInt 2, VInt 3]))])
      eval' st expr `shouldBe` Right (VInt 3)
    it "8 + 2" $ do
      let expr = EBinop (IInt 8) Plus (IInt 2)
      eval' store expr `shouldBe` Right (VInt 10)
    it "8 / 0" $ do
      let expr = EBinop (IInt 8) Div (IInt 0)
      eval' store expr `shouldBe` Left "Cannot divide by zero"
    it "3 < 3.5" $ do
      let expr = EBinop (IInt 3) Cmplt (IFloat 3.5)
      eval' store expr `shouldBe` Right (VBool True)
    it "3 != 'three'" $ do
      let expr = EBinop (IInt 3) Cmpne (IString "three")
      eval' store expr `shouldBe` Right (VBool True)
    it "3 % 2.5" $ do
      let expr = EBinop (IInt 3) Mod (IFloat 2.5)
      eval' store expr `shouldBe` Right (VFloat 0.5)

  describe "Simple Statements" $ do
    it "i0 = 2 + 3;" $ do
      let stmts = [Assign (VLocal "i0") (EBinop (IInt 2) Plus (IInt 3))]
      let st = (Map.empty, Map.fromList [("i0", Just (VInt 5))])
      run' st stmts `shouldBe` Right (st, Nothing)
    it "if 2 <= 3 goto l2; l1: return 1; l2: return 0;" $ do
      let stmts = [If (EBinop (IInt 2) Cmple (IInt 3)) "l2",
                   Label "l1",
                   Return (Just (IInt 1)),
                   Label "l2",
                   Return (Just (IInt 0))]
      run' store stmts `shouldBe` Right (store, Just (VInt 0))

  where store = (Map.empty, Map.empty)