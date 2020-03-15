elementAt :: [a] -> Int -> a
elementAt xs n = xs !! (n - 1)


test1 = elementAt [1,2,3] 2
test2 = elementAt ['a','b','c'] 3
test3 = elementAt ["apple","mango","banana"] 2