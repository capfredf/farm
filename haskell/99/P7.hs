module P7
(
 flatten,
 flatten',
) where 
data NestedList a = Elem a | List [NestedList a] deriving (Show)

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List []) = []
flatten (List (x:xs)) = flatten x ++ flatten (List xs)

flatten' :: NestedList a -> [a]
flatten' (Elem x) = [x]
flatten' (List xs) = foldl (++) [] $ map flatten' xs
