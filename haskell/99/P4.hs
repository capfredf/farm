module P4
(
 myLength,
 myLength',
) where

myLength :: [a] -> Int
myLength = foldl (\acc x->acc+1) 0

myLength' :: [a] -> Int
myLength' list = len list 0
    where 
        len [] acc = acc
        len (_:xs) acc = len xs acc+1
