module Transpose where

import Models

transposeKey :: Int -> Key -> Key
transposeKey steps key = indexToKey (keyToIndex key + steps)

transposeSong :: Int -> [Key] -> Transposition
transposeSong steps song = do
  let newSong = map (transposeKey steps) song
      capoPosition = 12 - mod steps 12

  Transposition {originalSong = song, newSong = newSong, capoPosition = capoPosition}
