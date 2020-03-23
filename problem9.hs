-- | Problem9.hs
module Problem9 where

-- | packlist
pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = let (first, remaining) = span (== x) xs
             in (x:first) : pack remaining

test1 = pack [1,1,1,2,2,2,3,3,3]
test2 = pack "aaaaaabbbbbbbbbbccccddd"
             
