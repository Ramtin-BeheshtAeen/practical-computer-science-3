--
-- "Zeichenketten selbstgemacht"
-- 
module MyString where

-- Auf String vordefinierte Funktionen verstecken:
import Prelude hiding (length,(++),repeat, take, drop)

{-- mystring --}
data MyString = Empty 
              | Cons Char MyString 
{-- end --}
              deriving (Show, Eq)

-- Conversion to String
m2s :: MyString-> String
m2s Empty      = ""
m2s (Cons c cs)= c: m2s cs

-- Conversion from String
s2m :: String-> MyString
s2m s = if null s then Empty else Cons (head s) (s2m (tail s))

-- Verkettung zweier Zeichenketten
{-- concat --}
(++) :: MyString-> MyString-> MyString
Empty ++ t    = t
Cons c s ++ t = Cons c (s++ t)
{-- end --}

-- Laenge einer Zeichenkette
{-- length --}
length :: MyString-> Int
length Empty      = 0
length (Cons c s) = 1+ length s      
{-- end --}

-- Zeichenkette umkehren
{-- reverse --}
rev :: MyString-> MyString
rev Empty      = Empty
rev (Cons c t) = rev t ++ (Cons c Empty)
{-- end --}

-- Eine Zeichenkette n-mal wiederholen
repeat :: Int-> MyString-> MyString
repeat n s = if n == 0 then Empty
             else s ++ repeat (n-1) s


-- Die ersten n Zeichen der Zeichenkette
-- Voraussetzung: n >= 0
take :: Int-> MyString-> MyString
take n Empty = Empty
take n (Cons c s) | n == 0 = Empty
                  | otherwise = Cons c (take (n-1) s)

-- Die letzten n Zeichen der Zeichenkette
-- Voraussetzung: n >= 0
drop :: Int-> MyString-> MyString
drop n Empty  = Empty
drop n (Cons c s) | n == 0    = Cons c s
                  | otherwise = drop (n- 1) s
