module Polygon where

-- Basic dimension
type Dim = Integer 

-- Points
data Point = Pt { x :: Dim, y :: Dim } deriving Eq 

instance Show Point where 
  show (Pt x y)= show (x,y)

det :: Point-> Point-> Point-> Int
det (Pt ax ay) (Pt bx by) (Pt cx cy) = 
    signum (fromInteger (by*cx- ay*cx+ ay*bx- bx*cy+ ax*cy- ax*by))

-- Line segments
data Seg = Seg Point Point deriving (Eq, Show)

-- Square of the distance between two points
dist2 :: Point-> Point-> Dim
dist2 p q = (x p - x q) * (x p -  x q)+ (y p- y q)* (y p- y q)

-- Test if point is on line segment
onSeg :: Seg-> Point-> Bool 
onSeg (Seg a b) c =
 det a b c == 0 && dist2 a c <= dist2 a b && dist2 b c <= dist2 a b

-- Test if two line segments intersect
intersect :: Seg-> Seg-> Bool
intersect s@(Seg a b) t@(Seg c d) =
  (det a b c /= det a b d && det c d a /= det c d b) ||
   onSeg s c || onSeg s d || onSeg t a || onSeg t b
  
data Poly = Poly {points :: [Point]} deriving (Eq, Show)

isConvex :: Poly-> Bool
isConvex (Poly ps) = all (== head os) os
 where 
  os = [ det p q r | (Seg p q, r) <- zip (sides (Poly ps)) (drop 2 ps ++ take 2 ps) ]
 

sides :: Poly -> [Seg]
sides (Poly [])  = []
sides (Poly ps) = [ Seg p q | (p, q) <- zip ps (tail ps ++ [head ps]) ]

-- Test if point is inside convex polygon
inside :: Poly-> Point-> Bool
inside p q =
  all (== head os) os
   where 
    os = [ det a b q | Seg a b <- sides p ]
 
-- Test if two convex polygons collide
collides :: Poly-> Poly-> Bool
collides p q =
  foldr (||) False [ intersect s t | s <- sides p, t <- sides q ] ||
   foldr (||) False (map (inside q) (points p)) ||
     foldr (||) False (map (inside p) (points q))