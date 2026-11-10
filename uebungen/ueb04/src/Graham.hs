module Graham where

import Polygon

convexHull :: [Point]-> Poly
convexHull = scan . simplePoly

-- The simple polygon
simplePoly :: [Point]-> Poly
simplePoly ps = Poly (p : sortPoints p qs)
 where (p, qs) = minP ps

-- Sort points by angle with respect to a reference point
sortPoints :: Point-> [Point]-> [Point]
sortPoints p [] = []
sortPoints p (q:qs) =
    sortPoints p [ r | r <- qs, det p r q < 0 ] ++ [q] ++
  sortPoints p [ r | r <- qs, det p r q >= 0 ]

-- Return lowest, leftmost point (and the rest)
minP :: [Point]-> (Point, [Point])
minP ps = (m, filter (/= m) ps)
  where m = foldr lower (head ps) ps
        lower p q
          | y p < y q || (y p == y q && x p < x q) = p
          | otherwise                              = q

scan :: Poly-> Poly
scan (Poly ps) = Poly (add (reverse (take 3 ps)) (drop 3 ps))
  where
    add h [] = h
    add h (q:qs) = add (normalise (q:h)) qs

-- Add a new point to the convex hull.
normalise :: [Point] -> [Point]
normalise (a:b:c:ps)
   | det a b c <= 0 = normalise (a:c:ps)
  | otherwise      = a:b:c:ps
normalise ps = ps