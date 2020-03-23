myReverse :: [y] -> [y]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ (x:[])

myReverse' :: [y] -> [y]
myReverse' l = reverse l

test1 = myReverse'[1,2,3,5,6]
test2 = myReverse'"Hello World"
test3 = myReverse'"how you doing??"
