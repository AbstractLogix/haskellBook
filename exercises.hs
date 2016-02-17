-- Haskell Book Exercises

-- Chapter 2. Hello, Haskell! 2.13

one = x * 3 + y
   where
     x = 3
     y = 1000

-- declaration in the where clause is not dependant on the order
two = x * 5
  where
    y = 10
    x = 10 * 5 + y

three = z / x + y
  where
    x = 7
    y = negate x
    z = y * 10

area d = pi * (r * r)
  where
    r = d / 2

-- chapter 2 Strings
thirdLetter :: Int -> Char
thirdLetter x = "Curry is awesome!" !! x

rvrs :: String -> String
rvrs xs = (drop 9 xs) ++ " " ++ (take 2 $ drop 6 xs) ++ " " ++ (take 5 xs)

-- chapter 3 Data types

data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Woot = Blah
changeMood Blah = Woot

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == reverse xs

myAbs  :: Integer -> Integer
myAbs x =
  if x < 0
     then negate x
     else x

-- working with 2-tuples
f :: (a,b) -> (c,d) -> ((b,d), (a,c))
f x y = ((snd x,snd y),(fst x,fst y))

-- a lambda function that will return 1 from the value [1,2,3]
-- (\(x:xs) -> x)

-- 5.5 Currying
-- currying example using lambdas (->) is the function typeconstructor
-- it's value is the function itself. Every function in haskell takes one argument
-- and returns one result. Currying as demonstrated below, a function takes an
-- argument and returns a function waiting to take the next argument

mult x y = x * y
mult1 x = \y -> x * y
mult2 = \x -> \y -> x * y

-- follow is an example of a partially applied function which demonstrates currying
add3 x = (+) 3 x
addx3' = (+) 3

-- chapter 5 Types
-- " A subclass cannot override the methods of its superclass. "

{-
  "Haskell's type inference is built on an extended version of the Damas-Hindley-Milner
  type system."
  "Type variables have no meaning outside the type signatures where they are bound."
-}

-- exercises page 180

--1.  Type signature of general function
--    (++) :: [a] -> [a] -> [a]
myConcat x = x ++ " yo" -- This will change the signature to :: [Char] -> [Char]

--2. General function
--   (*) :: Num a => a -> a -> a
myMult x = (x / 3) * 5 -- signature will remain the same until it's use

--
