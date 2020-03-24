rev :: [a] -> [a]
rev [] = error"Khali che"
rev [x] = error"Ulta seedha ek samaan"
rev list = reverse(list)

test case 1 = rev [1,2,3,4]
test case 2 = rev [2,3,4]
