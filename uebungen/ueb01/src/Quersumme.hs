module Quersumme where

quer :: Integer-> Integer
quer x = if x==0 then 0 else x `mod` 10 + quer(x `div` 10)
