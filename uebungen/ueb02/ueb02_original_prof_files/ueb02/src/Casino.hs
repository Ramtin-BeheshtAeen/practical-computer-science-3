module Casino where

data Jeton -- Hier Definition einsetzen und folgendes auskommentieren 
           -- deriving (Eq, Show)

wert :: Jeton-> Int
wert j = undefined

data Sammlung -- Hier Definition einsetzen und folgendes auskommentieren 
              -- deriving (Eq, Show)   

anzahl :: Sammlung -> Int
anzahl s = undefined

auszahlen :: Sammlung -> Int
auszahlen s = undefined

kaufen :: Int-> Sammlung
kaufen i = undefined

