module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Polygon
import Graham
import TestData

main = defaultMain $ testGroup "4.2: Convexe Hülle" $ [ testSimple, testGraham ]

testSimple = testGroup "Simple Poly" $ [
  testCase "Beispiel 1" $ simplePoly test1 @?= poly [(0,0),(7,0),(10,6),(7,6),(1,2),(3,10),(1,6),(0,4),(-1,8)], 
  testCase "Beispiel 2" $ simplePoly test2 @?= poly [(0,0),(2,0),(3,1),(1,1),(2,2),(3,3),(1,4),(0,2),(-1,3)],
  testCase "Beispiel 3" $ simplePoly test3 @?= poly [(0,0),(2,0),(3,1),(1,1),(3,3),(3,3),(2,2),(2,3),(1,3),(1,4),(1,5),(0,2),(-1,3)]
  ]

testGraham = testGroup "Convex Hull" $ [
  testCase "Beispiel 1" $ convexHull test1 @?= poly [(-1,8),(3,10),(10,6),(7,0),(0,0)], 
  testCase "Beispiel 2" $ convexHull test2 @?= poly [(-1,3),(1,4),(3,3),(3,1),(2,0),(0,0)],
  testCase "Beispiel 3" $ convexHull test3 @?= poly [(-1,3),(1,5),(3,3),(3,1),(2,0),(0,0)]
  ]
