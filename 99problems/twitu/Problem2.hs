-- | Problem2.hs
module Problem2 where

myButLast :: [a] -> a
myButLast = last . init

myButLast' :: [a] -> a
myButLast' [] = error "Cannot find but last of empty list"
myButLast' (a:[]) = error "Cannot find but last of list containing one element"
myButLast' (a:b:[]) = a
myButLast' (x:xs) = myButLast' xs

test1 = myButLast' ('a':'b':[])
test2 = myButLast' []
test3 = myButLast' [8, 7..(-9)]  -- https://stackoverflow.com/questions/6806455/decrementing-ranges-in-haskell
