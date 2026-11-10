module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Ghostbusters


s1 = [(ghost (-22,17),buster (-27,35)),
      (ghost (-29,13),buster (14,25)),
      (ghost (-3,-3),buster (32,43)),
      (buster (0,-10),ghost (25,8)),
      (buster (15,-17),ghost (32,13))]

s2 = [(buster (-2,-1),ghost (0,10)),
      (buster (-1,0),ghost (1,11)),
      (buster (0,0),ghost (2,11)),
      (ghost (3,12),buster (1,1)),
      (buster (2,-1),ghost (5,12)),
      (ghost (6,9),buster (6,1))]

s3 = [(buster (-2,-1),ghost (0,10)),
      (buster (-1,0),ghost (1,11)),
      (buster (0,0),ghost (2,11)),
      (ghost (3,12),buster (1,1)),
      (buster (2,-1),ghost (5,13)),
      (ghost (5,12),buster (6,1))]

main = defaultMain $ testGroup "4.3: Ghostbusters" $ [
  testCase "Beispiel 1" $ pairs d1 @?= s1,
  testCase "Beispiel 2" $ pairs d2 @?= s2,
  testCase "Beispiel 3" $ pairs d3 @?= s3 
  ]
