-- | Problem1.hs
module Problem1 where

myLast :: [a] -> a
myLast = last

myLast' :: [a] -> a
myLast' [] = error "Cannot find last element of an empty list"
myLast' (a:[]) = a
myLast' (a:b) = myLast' b

test1 = myLast [1, 2, 3, 4, 5]
test2 = myLast ['a'..'l']
test3 = myLast []
