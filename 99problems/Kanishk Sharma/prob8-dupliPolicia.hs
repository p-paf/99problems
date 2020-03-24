dupliPolicia :: Eq a => [a] -> [a]
dupliPolicia [] = []
dupliPolicia x = foldr (\a b -> if a == (head b) then b else a:b) [last x] x    --can only delete duplicates in a string


test case 1 = dupliPolicia "aaaaadddfvvvxdds"
test case 2 = dupliPolicia "bbbcccsss"

