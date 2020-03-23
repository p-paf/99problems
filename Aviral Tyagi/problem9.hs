pack :: (Eq a) => [a] -> [[a]]
pack [] = error "It's empty list."
pack (x: xs) = (x: takeWhile (==x) xs) : pack (dropWhile (==x) xs)


test1 = pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
test2 = pack [1,1,1,2,3,4,5,5,6]
test3 = pack []