data Shape = Circle Float Float Float|Rectangle Float Float Float Float deriving (Show)

surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2 
surface (Rectangle x1 y1 x2 y2) = (abs $ x1-x2) * (abs $ y1 - y2)

data Point = Point Float Float  deriving (Show) 
data Shape' = Circle' Point Float|Rectangle' Point Point deriving (Show)

surface' :: Shape' -> Float
surface' (Circle' _  r) = pi * r ^ 2 -- (Circle' (Point _ _) r)
surface' (Rectangle' (Point x1 y1) (Point x2 y2)) = (abs $ x1-x2) * (abs $ y1 - y2)

-- data Person = Person String String Int deriving (Show)
-- 
-- firstName :: Person -> String
-- firstName (Person first_name _ _ )  = first_name 
-- 
-- lastName :: Person -> String
-- lastName (Person _ lastname _ )  = lastname 
-- 
-- age :: Person -> Int
-- age (Person _ _ age)  = age 

data Person' = Person' { firstName::String,
                         lastName::String,
                         age::Int
                       } deriving (Show)

data List a = Empty | Cons a (List a) deriving (Show, Eq, Ord)

data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
    Red == Red = True
    Green == Green = True
    Yellow == Yellow = True
    _ == _ = False


