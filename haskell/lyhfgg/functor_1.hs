data Hello a = The a|No deriving (Show)
instance Functor Hello where
    fmap f (The x) = The $ f x
    fmap f No = No
test x = 'c'
-- instance Functor ((->) r) where
--     fmap f g = (\x -> f (g x))
-- 
-- instance Functor [ ] where
--     fmap = map
