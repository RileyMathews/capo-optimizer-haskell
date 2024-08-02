module TransposeSpec where

import Models
import Test.Hspec
import Transpose

spec :: Spec
spec = do
  describe "transposeKey" $ do
    it "tranposes keys" $ do
      transposeKey 2 A `shouldBe` B
      transposeKey 4 D `shouldBe` Gb

  describe "transposeSong" $ do
    it "tranposes the song given to it" $ do
      let song = [A, B]
          transposition = transposeSong 2 song
      originalSong transposition `shouldBe` [A, B]
      newSong transposition `shouldBe` [B, Db]
      capoPosition transposition `shouldBe` 10

    it "should be able to handle steps larger than 12" $ do
      let song = [A, B]
          transposition = transposeSong 14 song
      originalSong transposition `shouldBe` [A, B]
      newSong transposition `shouldBe` [B, Db]
      capoPosition transposition `shouldBe` 10
