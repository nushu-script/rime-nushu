#!/usr/bin/env runhaskell

{-# OPTIONS_GHC -Wall -Werror #-}

-- Make s2nushu.txt for Nushu Input Method
-- Usage: See CONTRIBUTING.md

import Data.Foldable (for_)
import Data.List (intersperse, nub)
import Data.List.Split (splitOn)
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map

insertOne :: Char -> Map Char String -> Char -> Map Char String
insertOne v m k = Map.insertWith (++) k [v] m

handleLine :: Map Char String -> String -> Map Char String
handleLine m line =
  let [[v],_,ks,_] = splitOn "," line
   in foldl (insertOne v) m ks

buildMap :: [String] -> Map Char String
buildMap contents = foldl handleLine Map.empty contents

main :: IO ()
main = do
  (_:contents) <- fmap lines getContents
  let xs = Map.assocs $ buildMap contents
  for_ xs $ \(k,vs) -> do
    putStrLn $ k : '\t' : intersperse ' ' (nub vs)
