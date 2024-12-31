module Main where

import ModelsSpec qualified
import Test.Hspec
import TransposeSpec qualified
import LibSpec qualified

main :: IO ()
main = do
  hspec ModelsSpec.spec
  hspec TransposeSpec.spec
  hspec LibSpec.spec
