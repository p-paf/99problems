myLast :: [y] -> y
myLast [x] = x
myLast (x:xs) = myLast xs

myLast' :: [y] -> y
myLast' l = last l

myLast'' :: [y] -> y
myLast'' l = head (reverse l)


test1 = myLast ['a','b','c']
test2 = myLast ['1','2','3','4','5']
test3 = myLast ["apple","banana","mango"]
