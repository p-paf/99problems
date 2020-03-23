-- | Problem5.hs
module Problem5 where

-- | reverse of list 
reverselist :: [a] -> [a]
reverselist list = reverselistpass list []

reverselistpass [] ans = ans
reverselistpass (x:xs) ans = reverselistpass xs ([x] ++ ans)

test1 = reverselist [1,2,3,4,5,6,7]
test2 = reverselist "abhishek "
