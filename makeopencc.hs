{-# LANGUAGE FlexibleInstances, GADTs, GeneralizedNewtypeDeriving, MultiParamTypeClasses, OverloadedStrings, QuasiQuotes, TemplateHaskell, TypeFamilies, ViewPatterns #-}

-- Make s2nushu.txt for Nushu Input Method

import Data.Foldable (for_)
import Data.List (intersperse)
import Data.Text (Text)
import Data.Time.Clock (UTCTime)
import Database.Persist.Sqlite
import Database.Persist.TH

share [mkPersist sqlSettings, mkMigrate "migrateAll"] [persistLowerCase|
ServerUser
  credsPlugin Text
  credsIdent Text
  name Text Maybe
  isAdmin Bool
  deriving Show
NushuHanzi json
  nushuChar Int
  hanzi String
  uploader ServerUserId
  uploadTime UTCTime
  validity Bool
  UniqueNushuHanzi nushuChar hanzi
  deriving Show
|]

type QueryRow = (Single String, Single String)

selectedToFile :: QueryRow -> String
selectedToFile (Single hanzi,Single xs) = hanzi <> "\t" <> (intersperse ' ' $ fmap (toEnum . read) $ words $ xs)

main :: IO ()
main = do
  res <- runSqlite "data.db" $ rawSql "select hanzi, group_concat(nushu_char, ' ') \
    \from nushu_hanzi \
    \group by hanzi \
    \order by nushu_char" []
  for_ res $ putStrLn . selectedToFile
