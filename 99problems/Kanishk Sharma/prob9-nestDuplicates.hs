nestDuplicates :: Eq a => [a] -> [[a]]

nestDuplicates [] = []

nestDuplicates (x:xs) = let (first, remaining) = span (== x) xs

              in (x:first) : nestDuplicates remaining




test case 1 = nestDuplicates ['a','a','a','a','b','b','c','c','a','d','e','e']

