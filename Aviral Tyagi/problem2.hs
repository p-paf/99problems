myButLast :: [a] -> a
myButLast [second_last , last] = second_last
myButLast (first: rest) = myButLast rest

myButLast'::[a] -> a
myButLast' = last . init

test1 = myLast ['a'..'1']
test2 = myButLast []
test3 = myButLast [8,7..(-9)]