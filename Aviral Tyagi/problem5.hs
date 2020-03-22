myReverse :: [a] -> [a]
myReverse [] = error "It's empty list."
myReverse (first : rest) = myReverse rest ++ [first]

test1 = myReverse "A man, a plan, a canal, panama!"
test2 = myReverse [1..10]
test3 = myReverse []