module V02_Datentypen where

-- == Enumeration Aufzaelung == --
data Ampel = Rot | Gelb | Gruen deriving (Show, Eq)

-- == Produkte == --
--P is the constructor, the “box” that holds the two numbers together
data Punkt = P Int Int

-- ==Step 3: The general case, with several constructors that each have arguments== --
data Form = Kreis Double | Rechteck Double Double

-- ==Step 4: Rekursive Datentypen (A type that contains itslef) -- ==
--A MyString is either empty, or one character plus another MyString. That’s how you can--build chains of any length:
data Mystring = Empty | Cons Char Mystring  deriving Show
data Liste    = Leer  | E  Int Liste deriving Show
-- E is constructor name
naechste   :: Ampel -> Ampel
naechste a  = case a of
  Rot   -> Gruen
  Gruen -> Gelb
  Gelb  -> Rot

isRot     :: Ampel -> Bool
isRot a   = case a of
  Rot -> True
  _   -> False


 -- == Produkte == --
xKoord :: Punkt -> Int
xKoord (P x y) = x

yKoord ::Punkt -> Int
yKoord  (P x y) = y

abstand :: Punkt -> Double
abstand(P x y) = sqrt((fromIntegral x)^2 + (fromIntegral y)^2)

-- ==  == --
flaeche :: Form -> Double
flaeche (Kreis r ) = r * pi
flaeche (Rechteck x y )  = x * y 

-- ==  == --
summe :: Liste -> Int
summe Leer    = 0
-- That’s the recursion: summe calls itself on the smaller rest. 
summe (E element liste) = element  + summe liste
