module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Casino

main = defaultMain $ testGroup "2.3: Casino" 
  [ testCase "First example" $
    assertEqual "Falsche Anzahl" 3 (anzahl (kaufen 16))
  , testCase "First example" $
    assertEqual "Falscher Wert" 16 (auszahlen (kaufen 16))
  , testCase "Second example" $
    assertEqual "Falsche Anzahl" 8 (anzahl (kaufen 187))
  , testCase "Second example" $
    assertEqual "Falscher Wert" 187 (auszahlen (kaufen 187))
  , testCase "Third example" $
    assertEqual "Falsche Anzahl" 6 (anzahl (kaufen 37))
  , testCase "Third example" $
    assertEqual "Falscher Wert" 37 (auszahlen (kaufen 37))
  ]
