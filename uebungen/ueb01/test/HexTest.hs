module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Hex

main = defaultMain $ testGroup "1.4: Hex" $ [
  testCase "encode 65347" $ encode 65347 @?= "ff43",
  testCase "decode ff43" $ decode "ff43" @?= 65347,
  testCase "encode 0" $ encode 0 @?= "0"
  ]
