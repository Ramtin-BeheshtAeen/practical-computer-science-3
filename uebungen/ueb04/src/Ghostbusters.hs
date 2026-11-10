module Ghostbusters where

-- Geometric prelude
import Polygon

-- The objects: ghost and ghostbusters
data Obj = Ghost {coord :: Point }
         | Buster {coord :: Point }
         deriving Eq

instance Show Obj where 
  show (Ghost c) = "Ghost "++ show c
  show (Buster c) = "Buster "++ show c

count :: Obj -> Int
count (Ghost _)  = -1
count (Buster _) = 1

leftOf :: Obj-> Obj-> Obj-> Bool
leftOf p q r = undefined

-- Get the bottom leftmost point (well, bottom, mostly)
bottomLeftMost :: [Obj]-> (Obj, [Obj])
bottomLeftMost = undefined 

-- Sort with respect to point p. 
sortByAngle :: Obj-> [Obj]-> [Obj]
sortByAngle = undefined
                       
-- Main function: splits a list of points into a list of pairs
-- Precondition: list has even number of items, and same number of ghosts
-- and busters (i.e. sum (map count pts) == 0).
-- If list empty, we're done.
-- If list has two elements, we're done.
-- Otherwise, find one pair, split list into to two parts with equal number of ghosts and
-- busters, and recurse.
pairs :: [Obj]-> [(Obj, Obj)]
pairs = undefined


-- Factory functions for test data
ghost :: (Dim, Dim)-> Obj
ghost (x, y) = Ghost (Pt x y)

buster :: (Dim, Dim)-> Obj
buster (x, y) = Buster (Pt x y)

d1, d2, d3 :: [Obj]
-- Test data 1: a random splattering
d1 = [ghost (32, 13), buster (15, -17), ghost (-29, 13), buster (32, 43),
      ghost (-3, -3), buster (0, -10), ghost (-22, 17), buster (14, 25),
      ghost (25, 8), buster (-27, 35)] 

-- Test data 2: roughly two halves
d2 = [ghost (0, 10), ghost (1, 11), ghost (2, 11), 
      ghost (3, 12), ghost (5, 12), ghost (6, 9),
      buster (-2, -1), buster (-1, 0), buster (0,0),
      buster (1, 1), buster (2, -1), buster (6, 1)]

-- Test data 3: Variation of d2 with colinear points
d3 = [ghost (0, 10), ghost (1, 11), ghost (2, 11), 
      ghost (3, 12), ghost (5, 12), ghost (5, 13),
      buster (-2, -1), buster (-1, 0), buster (0,0),
      buster (1, 1), buster (2, -1), buster (6, 1)]
