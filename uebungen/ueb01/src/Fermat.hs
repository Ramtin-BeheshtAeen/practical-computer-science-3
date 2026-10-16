module Fermat where

-- integer square (i.e. the i s.t. i^2 <= x < (i+1)^2
isqrt :: Integer-> Integer
isqrt x = truncate(sqrt(fromInteger x))

-- | Fermat primality check
fastprime :: Integer-> Bool
fastprime p  = if  (2^(p-1) `mod` p) == 1 then True else False  

-- | Regular primality test
slowprime :: Integer-> Bool
slowprime 1 = False
slowprime n = primeHelper n (isqrt n)


primeHelper :: Integer -> Integer -> Bool
primeHelper n 1 = True -- No divisor is found so it is prime 
primeHelper n m = if (n `mod` m) == 0 then False --if it has a divisor it is not prime 
  else primeHelper n (m-1) 



  
count_false :: Integer-> Integer
count_false n = undefined
