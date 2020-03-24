
compress []     = []
compress (x:xs) = x : (compress $ dropWhile (== x)  xs)

test_case1 = "aaaaabbbbbcccccd"
test_case2 = "sssshhhhdgf"