module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Fermat

main = defaultMain $ testGroup "1.3: Primzahlen" [exercise131, exercise132, exercise133]

exercise131 = testGroup "Slow primes" $ [
    testCase "slowprime 5461" $ slowprime 5461 @?= False
  , testCase "slowprime 5399" $ slowprime 5399 @?= True
  , testCase "slowprime 1" $ slowprime 1 @?= False
  ]

exercise132 = testGroup "Fast primes" $ [
    testCase "fastprime 5461" $ fastprime 5461 @?= True
  , testCase "fastprime 5397" $ fastprime 5397 @?= False
  , testCase "fastprime 1" $ fastprime 1 @?= False
  ]

exercise133 = testGroup "Counting primes" $ [
    testCase "count_false 100" $ count_false 100 @?= 1
  , testCase "count_false 1000" $ count_false 1000 @?= 4
  ]

