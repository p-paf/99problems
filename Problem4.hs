-- | Problem4.hs
module Problem4 where

-- | lenth of  list
lenlist :: [a] -> Int 
lenlist [] = 0 
lenlist list = lenlistpass list  0

lenlistpass :: [a] -> Int -> Int
lenlistpass [] n = n
lenlistpass (x:xs) n = lenlistpass xs (n + 1)
