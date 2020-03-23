-- | Problem6.hs
module Problem6 where

-- | palindromeornot 
reverselist :: [a] -> [a]
reverselist list = reverselistpass list []

reverselistpass [] ans = ans
reverselistpass (x:xs) ans = reverselistpass xs ([x] ++ ans)

palindromeornot :: Eq a => [a] -> Bool
palindromeornot list = (list == (reverselist list ))


test1 = palindromeornot [1,2,3,4,5,4,3,2,1]
test2 = palindrmeornot "abhihba"

