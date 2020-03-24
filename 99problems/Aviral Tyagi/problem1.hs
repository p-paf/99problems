myLast :: [a] -> a

myLast[first] = first

myLast (_:rest) = myLast rest



myLast' :: [a] -> a
myLast' [] = error "It's empty list."
myLast' (a : []) = a
myLast' (a:b) = myLast' b

test1 = myLast [1,2,3,4,5]
test2 = myLast ['a'..'1']
test3 = myLast[]