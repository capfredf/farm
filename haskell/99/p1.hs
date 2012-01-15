module P1
(
 myLast,
 myLast
 ) where
myLast = head . reverse


myLast' [a]->a
myLast' (x:xs) = myLast'
myLast' [x] = x
myLast' [] = error "no empty list"
