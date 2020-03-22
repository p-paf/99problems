-- | Problem10.hs
module Problem10 where

-- | packlistno

encode :: Eq a => [a] -> [(Int,a)]
encode xs = map (\ll -> (length ll, head ll)) (pack xs)
