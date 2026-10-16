module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Perfect

main = defaultMain $ testGroup "1.2: Perfect" [exercise121, exercise122, exercise123, exercise124]

exercise121 = testGroup "perfect" $ [
  testCase "divides 3 7" $ divides 3 7 @?= False,
  testCase "divides 7 35" $ divides 7 35 @?= True
  ]

exercise122 = testGroup "sumOfDivs" $ [
  testCase "sumOfDivisors 3" $ sumOfDivisors 3 @?= 1,
  testCase "sumOfDivisors 45" $ sumOfDivisors 45 @?= 33,
  testCase "sumOfDivisors 28" $ sumOfDivisors 28 @?= 28
  ]

exercise123 = testGroup "perfect" $ [
  testCase "perfect 45" $ perfect 45 @?= False,
  testCase "perfect 28" $ perfect 28 @?= True
  ]

exercise124 = testGroup "Count perfect numbers" $ [
  testCase "First four perfect numbers" $ filter perfect [1..10000] @?= [6, 28, 496, 8128]
  ]