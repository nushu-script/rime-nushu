-- Make s2nushu.txt for Nushu Input Method
-- Usage: stack runhaskell -- -Wall -Werror makeopencc.hs < data.csv > s2nushu.txt

import Data.Foldable (traverse_)
import Data.List (intersperse)
import Data.List.Split (splitOn)
import Data.MultiMap (MultiMap)
import qualified Data.MultiMap as MM (assocs, empty, insert)
import System.IO

insertOne :: Char -> MultiMap Char Char -> Char -> MultiMap Char Char
insertOne ch m v = MM.insert v ch m

getMap :: MultiMap Char Char -> String -> MultiMap Char Char
getMap m x = foldl (insertOne colA) m colC
 where
  [[colA],_,colC,_] = splitOn "," x

pp :: (Char, String) -> String
pp (k, v) = k : '\t' : intersperse ' ' v

main :: IO ()
main = do
  hSetEncoding stdin utf8_bom
  ("女书字符,《字帖》序,对应汉字,江永方言代表发音":contents) <- fmap lines getContents
  traverse_ (putStrLn . pp)
    $ MM.assocs
    $ foldl getMap MM.empty contents
