
pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)

test_case1 = ['a','a','a','b','c','c','c','d','a','a','c']
test_case2 = ['a','c','d','a','a','a','d','a']