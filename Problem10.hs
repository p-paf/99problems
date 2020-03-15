pack :: Eq a => [a] -> [[a]]
pack []     = []
pack (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)

encode :: Eq a => [a] -> [(Int, a)]
encode xs = map (\x -> (length x, head x)) (pack xs)

test1 = encode "aaaabccaadeeee"
test2 = encode "xlassadwwopwe"
test_3 = encode "aklaaaaaakwefwe"