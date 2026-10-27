module Casino where

data Jeton = Gold | Silber | Dunkelrot10 | Dunkelrot5 | Dunkelrot1 deriving (Eq, Show)

           
wert :: Jeton-> Int
wert j = case j of
  Gold -> 100
  Silber -> 50
  Dunkelrot10 -> 10
  Dunkelrot5  -> 5
  Dunkelrot1  -> 1
-- J is  constructor 
data Sammlung  = Leer | J  Jeton Sammlung  deriving (Eq, Show)

-- Count the chips:
anzahl :: Sammlung -> Int
anzahl Leer  = 0
anzahl (J _ sammlung)  = 1 + anzahl sammlung

auszahlen :: Sammlung -> Int
auszahlen Leer = 0
auszahlen (J jeton sammlung) =  wert(jeton) + auszahlen sammlung

kaufen :: Int-> Sammlung
kaufen i
  | i <= 0   = Leer
  | i >= 100 = J Gold( kaufen (i - 100))
  |  i >= 50 = J Silber (kaufen (i - 50))
  | i >= 10  = J Dunkelrot10 (kaufen (i - 10))
  | i >= 5  = J Dunkelrot5 (kaufen (i - 5))
  | i >= 1  = J Dunkelrot1 (kaufen (i - 1))
  
  

