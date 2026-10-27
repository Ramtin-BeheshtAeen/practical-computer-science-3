module Coffee where

data Getraenk -- Hier ihren Datentyp einfügen, und die folgende Zeile einkommentieren:
              -- deriving (Eq, Show)

data Groesse 
              -- deriving (Eq, Show)

data Gebaeck  
              -- deriving (Eq, Show)

getraenk_preis :: Getraenk-> Groesse-> Int
getraenk_preis = undefined
  
gebaeck_preis :: Gebaeck-> Int
gebaeck_preis = undefined

data Bestellung  
                -- deriving (Eq, Show)

-- Bestellungen

start :: Bestellung
start = undefined

order_getraenk :: Bestellung-> Getraenk-> Groesse-> Bestellung
order_getraenk = undefined

order_gebaeck :: Bestellung-> Gebaeck-> Bestellung
order_gebaeck = undefined

zwischensumme :: Bestellung-> Int
zwischensumme b = undefined

anzahl_gebaeck :: Bestellung-> Gebaeck-> Int
anzahl_gebaeck = undefined

anzahl_getraenk :: Bestellung-> Getraenk-> Groesse-> Int
anzahl_getraenk = undefined

anzahl_muffins :: Bestellung-> Int
anzahl_muffins = undefined

bezahlen :: Bestellung-> Int
bezahlen = undefined

-- Sonderangebote 

rabatt :: Bestellung-> Int
rabatt = undefined

special_happy_breakfast_l :: Bestellung-> Int
special_happy_breakfast_l = undefined

special_happy_breakfast_m :: Bestellung-> Int
special_happy_breakfast_m = undefined

special_kaffee_kuchen :: Bestellung-> Int
special_kaffee_kuchen = undefined

special_cookies_c :: Bestellung-> Int
special_cookies_c = undefined

special_cookies_v :: Bestellung-> Int
special_cookies_v = undefined


{-

Zum interaktiven Testen:
	
b1 = order_gebaeck start (Cookie Vanille)
b2 = order_getraenk b1 Cappuccino L
b21 = order_getraenk b2 Cappuccino L
b3 = order_gebaeck b21 (Cookie Schokolade)
b4 = order_getraenk b3 CafeCreme M 
b5 = order_gebaeck b4 Croissant
b6 = order_gebaeck b5 (Cookie Vanille)
b7 = order_gebaeck b6 Croissant

-}
