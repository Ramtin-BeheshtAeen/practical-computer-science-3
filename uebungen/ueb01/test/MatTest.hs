module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Mat

main = defaultMain $ testGroup "1.5: Matrikelnummern" $ [
  testCase "pruefziffer 325687" $
     pruefziffer 325687 @?= 7,
  testCase "pruefziffer 378843" $ 
     pruefziffer 378843 @?= 1,
  testCase "pruefziffer 235658" $
     pruefziffer 235658 @?= 0, 
  testCase "check 6256870" $
     checkMatrNo 6256870 @?= True,
  testCase "check 1574227" $
     checkMatrNo 1574227 @?= False
  ]
