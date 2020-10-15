module Prime where

import Data.List

isPrime :: Integer -> Bool
isPrime x = isPrime' 1 x 0

isPrime' :: Integer -> Integer -> Integer -> Bool
isPrime' i x n
    | n > 2 = False
    | i <= x = isPrime' (i+1) x (n + (rest0 i x))
    | otherwise = True

rest0 :: Integer -> Integer -> Integer
rest0 a b
    | b `mod` a == 0 = 1
    | otherwise = 0
