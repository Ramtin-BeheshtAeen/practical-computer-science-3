module TestData where

import Polygon

test1 :: [Point]
test1 = mkP [(0,0), (1,2), (0,4), (1,6), (-1, 8), (7,6), (3,10), (10,6), (7, 0)]

test2 :: [Point]
test2 = mkP [(0,0), (1,1), (2,0), (3,1), (2,2), (0,2), (3,3), (-1,3), (1,4)]

test3 :: [Point]
test3 = mkP [(0,0), (-1,3), (1,5), (2,0), (1,1), (0,2), (1,4), (3,3),
             (1,3), (2,3), (3,3), (3,1), (2,2)]

mkP :: [(Dim, Dim)]-> [Point] 
mkP = map (uncurry Pt)

poly :: [(Dim, Dim)]-> Poly
poly = Poly . mkP


polyU, polyP, polyQ, polyR, polyS :: Poly

polyU = Poly [Pt 1 1, Pt 4 3, Pt 5 1, Pt 3 (-2), Pt (-1) (-1), Pt (-1) 3, Pt 2 4]
polyP = Poly [Pt 4 3, Pt 5 1, Pt 3 (-2), Pt (-1) (-1), Pt (-1) 3, Pt 2 4]
polyQ = Poly [Pt 6 4, Pt 7 (-2), Pt 1 (-3)]
polyR = Poly [Pt 5 1, Pt 3 (-2), Pt 1 0, Pt 3 2] 
polyS = Poly [Pt 2 2, Pt 5 6, Pt 3 5]
