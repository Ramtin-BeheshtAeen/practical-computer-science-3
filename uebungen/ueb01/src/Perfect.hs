module Perfect where

divides :: Integer-> Integer-> Bool
divides n m = if (m `mod` n) == 0 then True else False 

sumOfDivisors :: Integer-> Integer
sumOfDivisors n = sumDiv2 n (n-1)

sumDiv2 :: Integer-> Integer-> Integer
sumDiv2 n 0 = 0
sumDiv2 n m = if (divides m n) == True then m + sumDiv2 n (m-1) else sumDiv2 n (m-1) 

perfect :: Integer-> Bool
perfect n = if (sumOfDivisors n == n) then True else False


-- als hobby wollte ich ein paar perfekt nummern finden:
perfectLoop :: Integer -> Integer -> IO ()
perfectLoop n end
  | n > end = return ()
  | perfect n = do print n
                   perfectLoop (n+1) end
  | otherwise = perfectLoop (n+1) end
