module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Polygon
import TestData

main = defaultMain $ testGroup "4.1: Polygons" $ [ testIsConvex, testIntersect, testInside, testCollides ]

testIntersect = testGroup "intersect" $ [ 
  testCase "intersects" $ intersect (Seg (Pt 1 1) (Pt 5 3)) (Seg (Pt 3 2) (Pt 5 0)) @?= True, 
  testCase "no intersect" $ intersect (Seg (Pt 0 (-1)) (Pt 0 1)) (Seg (Pt 1 0) (Pt 1 3)) @?= False,
  testCase "intersects" $ intersect (Seg (Pt 0 0) (Pt (-1) (-2))) (Seg (Pt (-2) 0) (Pt 1 (-2))) @?= True, 
  testCase "intersects" $ intersect (Seg (Pt 1 1) (Pt 5 3)) (Seg (Pt 3 2) (Pt 5 0)) @?= True
  ]

testInside = let p = Poly [Pt 2 0, Pt 4 1, Pt 4 3, Pt 2 4, Pt 0 2] in testGroup "inside" $ [
  testCase "inside" $ inside p (Pt 2 2) @?= True, 
  testCase "not inside" $ inside p (Pt 3 4) @?= False,
  testCase "inside" $ inside p (Pt 3 3) @?= True,  
  testCase "not inside" $ inside p (Pt 1 1) @?= False
  ]

testIsConvex = testGroup "isConvex" $ [
  testCase "not convex" $ isConvex polyU @?= False, 
  testCase "convex" $ isConvex polyP @?= True
  ]

testCollides = testGroup "collides" $ [
  testCase "Collision" $ collides polyP polyQ @?= True, 
  testCase "Collision" $ collides polyP polyR @?= True,
  testCase "No collision" $ collides polyQ polyS @?= False,
  testCase "No collision" $ collides polyP polyS @?= True
  ]
