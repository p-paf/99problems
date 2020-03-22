-- | Problem9.hs
module Problem9 where

-- | packlist
pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = let (first, remaining) = span (== x) xs
             in (x:first) : pack remaining