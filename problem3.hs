-- | Problem3.hs
module Problem3 where

-- | k element of the list 
elementAta :: [a] -> Int -> a
elementAta [] k =error " dscfv"
elementAta (x:xs) 0 = x
elementAta (x:xs) k = elementAta xs (k-1)