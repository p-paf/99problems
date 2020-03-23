import Data.Char
mytoLower :: Char -> Char
mytoLower ch
    | ord 'A' <= ord ch && ord 'Z' >= ord ch  = chr (ord ch + ord 'a' - ord 'A')
    |otherwise = ch


--isPalindrome :: [a] -> Bool
isPalindrome [] = True
isPalindrome [a] = True
isPalindrome (x:xs)
    |mytoLower x == mytoLower (last xs) = isPalindrome  (init xs)
    | otherwise = False

test1 = isPalindrome "hello"
test2 = isPalindrome "CivIc"
test3 = isPalindrome "RaceCar"

