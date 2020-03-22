-- | Problem6.hs
module Problem6 where

-- | palindromeornot 
reverselist :: [a] -> [a]
reverselist list = reverselistpass list []

reverselistpass [] ans = ans
reverselistpass (x:xs) ans = reverselistpass xs ([x] ++ ans)

palindromeornot :: Eq a => [a] -> Bool
palindromeornot list = (list == (reverselist list ))

