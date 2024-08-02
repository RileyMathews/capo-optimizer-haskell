module Main where

import Lib
import Test.Hspec

spec :: Spec
spec = do
  describe "MyFunction" $ do
    it "should do something" $ do
      getText `shouldBe` "Hello lib!"

main :: IO ()
main = hspec spec
