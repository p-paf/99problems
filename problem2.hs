-- | Problem2.hs
module Problem2 where

-- | second Last element of the list 
mylast :: [a] -> a
mylast list = last list

mylasts :: [a] -> a 
mylasts []=error " dscfv"
mylasts (a: b : [])= a 
mylasts (c : cs )= mylasts cs


test1 = [1,2,3,4,5,6,7]
test2 = "abhishek" 
