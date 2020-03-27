isPlaindrone :: Eq a => [a] -> Bool
isPlaindrone list = (list == reverse list)


test case 1 = isPlaindrone [1,2,3,2,1]
test case 2 = isPlaindrone [1,2,3]



