module Fermat where

-- integer square (i.e. the i s.t. i^2 <= x < (i+1)^2
isqrt :: Integer-> Integer
isqrt x = truncate(sqrt(fromInteger x))

-- | Fermat primality check
fastprime :: Integer-> Bool
fastprime p  = undefined 

-- | Regular primality test
slowprime :: Integer-> Bool
slowprime n = undefined

count_false :: Integer-> Integer
count_false n = undefined
