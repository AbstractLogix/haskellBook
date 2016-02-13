module Reverse where

rvrs :: String -> String
rvrs xs = (drop 9 xs) ++ " " ++ (take 2 $ drop 6 xs) ++ " " ++ (take 5 xs)

main :: IO ()
main = print (rvrs "Curry is awesome")
