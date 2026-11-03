

--holds Int type: data Liste = Leer | E Int Liste
-- making it generic:
--                     Constructors name:
data Liste a = Empty | ListeConstructor a (Liste a) deriving Show
{-
ghci> ListeConstructor 'H' (ListeConstructor 'E' Empty)
ListeConstructor 'H' (ListeConstructor 'E' Empty)
ghci> ListeConstructor 20 (ListeConstructor 10 Empty)
ListeConstructor 20 (ListeConstructor 10 Empty)
-}

-- for step 2:
data SimpleListe b = Leer | L b (SimpleListe b) deriving Show

laenge :: Liste a  -> Int
laenge Empty = 0
laenge (ListeConstructor  x rest ) = 1 + (laenge rest)

{-
false one :
laenge  ListeConstructor  'H'  (ListeConstructor 'E' Empty)
        └─── arg 1 ────┘ └2┘  └────────── arg 3 ─────────┘
right one:
ghci> laenge (ListeConstructor 'H' (ListeConstructor 'E' Empty))
2
-}


-- ------------------/Step 2: Polymorphic functions (slide 9)/--------
-- takes 2 lists and return one 
anhaengen :: SimpleListe b -> SimpleListe b -> SimpleListe b
anhaengen Leer secondListe =  secondListe
anhaengen (Leer x rest)




