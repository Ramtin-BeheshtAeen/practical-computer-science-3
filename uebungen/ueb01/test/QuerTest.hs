module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Quersumme

main = defaultMain $ testGroup "1.1: Quersumme" $ [
  testCase "quer 5" $ quer 5 @?= 5,
  testCase "quer 457" $ quer 457 @?= 16,
  testCase "quer 0" $ quer 0 @?= 0
  ]
