module ModelsSpec where

import Models
import Test.Hspec

spec :: Spec
spec = do
  describe "Models" $ do
    describe "Key" $ do
      it "can be constructed from any index" $ do
        indexToKey 0 `shouldBe` A
        indexToKey 2 `shouldBe` B
        indexToKey 12 `shouldBe` A
        indexToKey 14 `shouldBe` B

      it "can be constructing from strings" $ do
        stringToKey "A" `shouldBe` Just A
        stringToKey "Gb" `shouldBe` Just Gb

      it "returns nothing when given a bad string" $ do
        stringToKey "foo" `shouldBe` Nothing

      it "can be turned back into an index" $ do
        keyToIndex A `shouldBe` 0
        keyToIndex C `shouldBe` 3

      it "can be converted to a representable string" $ do
        show A `shouldBe` "A"
        show Eb `shouldBe` "Eb"
