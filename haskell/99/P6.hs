module P6
(
 isPalindrom,
 isPalindrom',
 ) where 
isPalindrom' :: (Eq a) => [a] -> Bool
isPalindrom' xs = xs == reverse xs

--A much verbose way--
isPalindrom :: (Eq a) => [a] -> Bool
isPalindrom xs = 
    let 
        len = length xs 
        (first_end, sec_start) = 
            if len `rem` 2==0 then (half_len-1, half_len) else (half_len, half_len)
            where half_len = len `div` 2 + 1
        slice start end xs= take (end-start) $ drop (start-1) xs
    in (slice 0 first_end xs) == (reverse $ slice sec_start (len+1) xs)
    -- in ((slice 0 first_end xs), (slice sec_start (len+1) xs))

isPalindrom'' :: (Eq a) => [a] -> Bool
isPalindrom'' forward_list = pred forward_list []
    where
        pred [] backward_list = forward_list==backward_list
        pred (x:source) backward_list = pred source (x:backward_list)
       
-- a c-inspired with lazy evaluation style
isPalindrom''' :: (Eq a) => [a] -> Bool
isPalindrom''' xs = (length xs) == (length $ takeWhile (\x->(fst x) == (snd x)) zipped)
    where zipped = zip xs (reverse xs)
-- Note: the tuple is different from the list in haskell, by contrast to python
-- Index-in-the-same-way is avaible for both of them, in python
-- However, in haskell, not at all
-- tuple uses fst, snd
-- list uses !!
