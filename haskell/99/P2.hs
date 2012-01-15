module P2
(
 myButLast,
 myButLast',
 ) where

myButLast :: [a] -> a
myButLast [] = error "no empty list"
myButLast [x] = error "the list must contains more than one elements"
myButLast (x:y:[]) = x
myButLast (x:xs) = myButLast xs

myButLast' :: [a] -> a
myButLast' [] = error "no empty list"
myButLast' [x] = error "the list must contains more than one elements"
myButLast' xs = head . tail . reverse $ xs
-- the xs can't be eliminated for the number of parameters must be identical
