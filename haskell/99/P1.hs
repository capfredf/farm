module P1
(
 myLast,
 myLast'
 ) where
myLast = head . reverse


myLast' :: [a]->a
myLast' [] = error "no empty list"
myLast' [x] = x
myLast' (x:xs) = myLast' xs
-- That's why order is important when specifying patterns and it's always best to specify the most specific ones first and then the more general ones later.
