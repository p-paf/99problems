myLength :: [a] -> Int
myLength [] = 0
myLength (_ : rest) = 1 + myLength rest 



test1 = myLength [123, 456, 789]
test2 = myLength "Hello, world!"
test3 = myLength "Haskell"