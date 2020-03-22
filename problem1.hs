-- | Problem1.hs
module Problem1 where

-- | Last element of the list 
mylast :: [a] -> a
mylast  = last 

mylasts :: [a] -> a 
mylasts []=error " dscfv"
mylasts (a : [])= a 
mylasts (a : b )= mylasts b 