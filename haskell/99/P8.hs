module P8
( 
 compress,
 compress',
 compress'',
 compress''',
 ) where

import List

compress [] = []
compress li = foldl (\acc x->if last acc /= x then acc++[x] else acc) [head li] li

compress' [] = []
compress' li = foldr (\x acc->if head acc /= x then (x:acc) else acc) [last li] li

compress'' :: Eq a => [a] -> [a]
compress'' = map head . group

compress''' :: Eq a => [a] -> [a]
compress''' = foldr func [] 
        where func x [] = [x]
              func x acc@(h:xs)
                    | x /= h = (x:acc)
                    | otherwise = acc
