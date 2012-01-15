module P5
(
 myReverse,
 myReverse',
 myReverse'',
) where

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

myReverse' = foldl (\acc x->(x:acc)) []

myReverse'' :: [a] -> [a]
myReverse'' xs = _reverse [] xs
    where 
        _reverse ret [] = ret
        _reverse acc (x:xs) = _reverse (x:acc) xs

