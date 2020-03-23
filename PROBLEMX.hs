--alreadyPresent :: [y] -> Bool
alreadyPresent [] = False
alreadyPresent [a] = False
alreadyPresent [a,b]
    | a == b = True
    | a /= b = False
alreadyPresent (x:xs)
    | head (x:xs) /= head xs = alreadyPresent (x : tail xs)
    | otherwise = True 


--compress :: [y] -> [y]
compress [] = []
compress [a] = [a]
compress [a,b]
    | a == b = [a]
    | a /= b = [a,b]
compress (x:xs)
    | alreadyPresent (reverse (x:xs))  == True = compress (init (x:xs))
    | otherwise =  compress (init (x:xs)) ++ ((head (reverse (x:xs))) : [])  
