-- | Problem4.hs
module Problem4 where

-- | lenth of  list
lenlist :: [a] -> Int 
lenlist [] = 0 
lenlist list = lenlistpass list  0

lenlistpass :: [a] -> Int -> Int
lenlistpass [] n = n
lenlistpass (x:xs) n = lenlistpass xs (n + 1)

test1 = lenlist [1,2,3,4,5,67]
test2 = lenlist "abhishek"
