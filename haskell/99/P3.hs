module P3
(
 elementAt,
 elementAt'
 ) where
elementAt :: [a] -> Int -> a
elementAt [] _ = error "index out of bound"
elementAt (x:_) 1 = x
elementAt (_:xs) n 
    -- | (length xs) < (n-1) = error "index out of bound": there is pattern above
    | n < 1 = error "index out of bound"
    | otherwise = elementAt xs (n-1)
-- elementAt _ _ = error "index out of bound": more genaralized pattern is no legal

elementAt' :: [a] -> Int -> a
-- the check of the arguments is same as the implementation above
elementAt' xs n = head $ drop (n-1) xs
