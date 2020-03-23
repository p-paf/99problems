pack :: Eq a => [a] -> [[a]]
pack []     = []
pack (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)

test1= pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a','a', 'd', 'e', 'e', 'e', 'e']
test2 = pack [ 'a','b','b','b','d']
test3 = pack ['x','y','z','z','z']
    
    
