module Bill where

import Prelude hiding (repeat)

-- From the Shoppe
formatL :: Int-> String-> String
formatL i s = repeat (i- length s) " " ++ s

showEuro :: Int-> String
showEuro i =
  (if i<0 then "-" else "") ++ 
  show (abs i `div` 100) ++ "."++
  show ((abs i `div` 10) `mod` 10) ++
  show (abs i `mod` 10)++ " EU"


-- From Strings
repeat :: Int-> String-> String
repeat n s = if n <= 0 then ""
             else s ++ repeat (n-1) s

-- Start

center :: Int-> String-> String
center n s = undefined

data Rechung -- Hier Definition einsetzen und folgendes auskommentieren 
             -- deriving (Eq, Show)

formatRechung :: Int-> Rechung-> String
formatRechung = undefined 

formatPosten  :: Int-> String-> Int-> String
formatPosten = undefined 

summe :: Rechung-> Int
summe = undefined

rechnung :: String-> String-> Int-> Rechung-> String
rechnung = undefined
