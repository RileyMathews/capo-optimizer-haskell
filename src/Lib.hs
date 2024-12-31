module Lib where

import Models

getHello :: String
getHello = "Hello!"

run :: IO ()
run = do
  print getHello
  print $ indexToKey 0
