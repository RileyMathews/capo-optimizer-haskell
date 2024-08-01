module Main (main) where

import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Your Test Suite" $ do
    it "should run a simple test" $ do
      True `shouldBe` True
