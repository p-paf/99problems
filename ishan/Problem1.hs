-- | Problem1.hs
module Problem1 where

myLast :: [a] -> a
myLast = last

myLast' :: [a] -> a
myLast' [] = error "Cannot find last element of an empty list"
myLast' (a:[]) = a
myLast' (a:b) = myLast' b
