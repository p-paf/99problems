myButLast :: [y] -> y
myButLast [] = error "No Element Present"
myButLast [a] = error "No Element Present at Last But one position"
myButLast [a,b] = a
myButLast (x:xs) = myButLast xs

myButLast' :: [y] -> y
myButLast' [] = error "No Element Present"
myButLast' [a] = error "No Element Present at Last But one position"
myButLast' l = head (reverse (init l))

test1 = myButLast [1,2,3,4,5,6]
test2 = myButLast ['a','b','c','d','e']
test3 = myButLast["Apple","Peach","DragonFruit"]