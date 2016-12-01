data Dir = Ar | Ab | De	| Iz deriving (Eq, Ord, Show)

type Pnt = (int, int)

mov :: [Dir] -> Pnt -> Pnt
mov (x:xs) Pnt = 

