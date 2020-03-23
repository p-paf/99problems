  --compress :: [y] -> [y]
compress [] = []
compress [a] = [a]
compress (x:xs)
    | head (x:xs) == head xs = compress xs
    | otherwise  = x : compress xs

--alreadyPresent :: [y] -> Bool
alreadyPresent [] = False
alreadyPresent [a] = False
alreadyPresent [a,b]
    | a == b = True
    | a /= b = False
alreadyPresent (x:xs)
    | head (x:xs) /= head xs = False
    | otherwise = True 


--compress' :: [y] -> [y]
compress' [] = []
compress' [a] = [a]
compress' [a,b]
    | a == b = [a]
    | a /= b = [a,b]
compress' (x:xs)
    | alreadyPresent (reverse (x:xs))  == True = compress' (init (x:xs))
    | otherwise =  compress' (init (x:xs)) ++ ((head (reverse (x:xs))) : [])

test1 = compress[1,1,1,3,4,5,9,6,6,11,1,3]
test2 = compress["apple","apple","apple","mango","mango","mango","mango","mango"]
test3 = compress "aaaabbcassaas"
