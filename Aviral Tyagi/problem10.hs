pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x: xs) = (x: takeWhile (==x) xs) : pack (dropWhile (==x) xs)


encode :: (Eq a) => [a] -> [(Int, a)]
encode list = encode' newList
    where newList = pack list
          encode' [] = []
          encode' (x:xs)  = ( length x, head x) : encode' xs



test1 = encode ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
test2 = encode [1,1,1,2,3,4,5,5,6]
test3 = encode []