kthElem :: [a] -> Int -> a

kthElem [] k = error"List is empty"
kthElem list k = (list !! (k-1))

test case 1 = kthElem [1,2,3] 2
test case 2 = kthElem "haskell" 3

