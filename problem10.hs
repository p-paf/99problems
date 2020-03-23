-- | Problem10.hs
module Problem10 where

-- | packlistno

encode :: Eq a => [a] -> [(Int,a)]
encode xs = map (\ll -> (length ll, head ll)) (pack xs)

test1 = encode [1,1,1,2,2,3,3,3]
test2 = encode "aaaabbbbbcccc"
