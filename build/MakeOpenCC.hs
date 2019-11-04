-- Make s2nushu.txt for Nushu Input Method
-- Usage: stack runhaskell --package split --package multimap -- -Wall -Werror MakeOpenCC.hs < data.csv > s2nushu.txt
-- data.csv from https://nushuscript.org/unicode_nushu/data.csv

import Data.Foldable (traverse_)
import Data.List (intersperse)
import Data.List.Split (splitOn)
import Data.MultiMap (MultiMap)
import qualified Data.MultiMap as MM (assocs, empty, insert)
import System.IO

insertOne :: Char -> MultiMap Char Char -> Char -> MultiMap Char Char
insertOne ch m v = MM.insert v ch m

getMap :: MultiMap Char Char -> String -> MultiMap Char Char
getMap m x = let [[colA],_,colC,_] = splitOn "," x in foldl (insertOne colA) m colC

pp :: (Char, String) -> String
pp (k,v) = k : '\t' : intersperse ' ' v

makeOpenCC :: String -> IO ()
makeOpenCC str =
 let ("女书字符,《字帖》序,对应汉字,江永方言代表发音":contents) = lines str
  in traverse_ (putStrLn . pp) $ MM.assocs $ foldl getMap MM.empty contents

main :: IO ()
main = do
  hSetEncoding stdin utf8_bom
  makeOpenCC =<< getContents
