compress :: (Eq a) => [a] -> [a]
compress [] = error "It's empty list."
compress [first] = [first]
compress (first : second : rest) | first == second = compress (second: rest)
                           | otherwise = first : compress (second : rest )


test1 = compress ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
test2 = compress [1..10]
test3 = compress []