data Complex = C Double  Double
	deriving Eq
instance Num Complex where
 
	C a b + C c d = C (a+c) (b+d)
	C a b - C c d = C (a-c) (b-d)
	C a b * C c d = C (a * c - b * d) (a * d + b * c)
instance Show Complex where
	show (C x y) 
	    | y < 0 = show(x) ++ "-" ++ show(abs (y)) ++ "i"
		| y == 0 && x == 0 = "0"
		| y == 0 = show (x)
		| x == 0 = show (y) ++ "i"
		|otherwise = show(x) ++ "+" ++ show(abs (y)) ++ "i"