-- | Problem2.hs
module Problem2 where

myButLast :: [a] -> a
myButLast list = last (init list)

myButLast' :: [a] -> a
myButLast' [] = error "Cannot find but last of empty list"
myButLast' (a:[]) = error "Cannot find but last of list containing one element"
myButLast' (a:b:[]) = a
myButLast' (x:xs) = myButLast' xs
