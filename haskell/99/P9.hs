import List
pack :: Eq a => [a] -> [[a]]
pack = group

pack' :: Eq a => [a] -> [[a]]
pack' [] = []
pack' li = (t:pack' rest)
    where same all@(x:r) = 
            let 
                heads = takeWhile (\a->a==x) all
                remains = drop (length heads) all
            in (heads, remains)
          (t, rest) = same li
          
pack'' :: Eq a => [a] -> [[a]]
pack'' [] = []
pack'' all@(x:xs) = (t:pack' rest)
    where (t, rest) = span (\a->a==x) all
