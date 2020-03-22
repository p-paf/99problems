-- | Problem5.hs
module Problem5 where

-- | reverse of list 
reverselist :: [a] -> [a]
reverselist list = reverselistpass list []

reverselistpass [] ans = ans
reverselistpass (x:xs) ans = reverselistpass xs ([x] ++ ans)