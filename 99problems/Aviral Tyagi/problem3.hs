elementAt :: [a] -> Int -> a
elementAt (first : rest) 1 = first
elementAt (_ : rest) n = elementAt rest (n-1)

test1 = elementAt ['a'..'1'] 3
test2 = elementAt "haskell" 5
test3 = elementAt [8,7..(-9)] 2