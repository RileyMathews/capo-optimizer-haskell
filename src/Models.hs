module Models where

data Key = A | Bb | B | C | Db | D | Eb | E | F | Gb | G | Ab
  deriving (Show, Eq)

indexToKey :: Int -> Key
indexToKey 0 = A
indexToKey 1 = Bb
indexToKey 2 = B
indexToKey 3 = C
indexToKey 4 = Db
indexToKey 5 = D
indexToKey 6 = Eb
indexToKey 7 = E
indexToKey 8 = F
indexToKey 9 = Gb
indexToKey 10 = G
indexToKey 11 = Ab
indexToKey x = indexToKey (mod x 12)

stringToKey :: String -> Maybe Key
stringToKey "A" = Just A
stringToKey "Bb" = Just Bb
stringToKey "B" = Just B
stringToKey "C" = Just C
stringToKey "Db" = Just Db
stringToKey "D" = Just D
stringToKey "Eb" = Just Eb
stringToKey "E" = Just E
stringToKey "F" = Just F
stringToKey "Gb" = Just Gb
stringToKey "G" = Just G
stringToKey "Ab" = Just Ab
stringToKey _ = Nothing

keyToIndex :: Key -> Int
keyToIndex A = 0
keyToIndex Bb = 1
keyToIndex B = 2
keyToIndex C = 3
keyToIndex Db = 4
keyToIndex D = 5
keyToIndex Eb = 6
keyToIndex E = 7
keyToIndex F = 8
keyToIndex Gb = 9
keyToIndex G = 10
keyToIndex Ab = 11

data Transposition = Transposition
  { originalSong :: [Key],
    newSong :: [Key],
    capoPosition :: Int
  }
