module LibSpec where

import Test.Hspec
import Lib

spec :: Spec
spec = do
  describe "Lib" $ do
    describe "getHello" $ do
      it "returns 'Hello!'" $ do
        getHello `shouldBe` "Hello!"
