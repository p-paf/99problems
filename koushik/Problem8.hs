
compress []     = []
compress (x:xs) = x : (compress $ dropWhile (== x)  xs)