myLength :: [y] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

myLength' :: [y] -> Int
myLength' l = length l

test1 = myLength [1,2,3,4]
test2 = myLength ['G','E','E','Z']
test3 = myLength "Hello World!"