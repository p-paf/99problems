myReverse :: [a] -> [a]
myReverse [] = []
myReverse (first : rest) = myReverse rest ++ [first]


isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = error "It's empty list."
isPalindrome [only_one_element] = True
isPalindrome list | list == myReverse list = True
        | otherwise       = False


test1 = myReverse "AMA"
test2 = myReverse [1..10]
test3 = myReverse []