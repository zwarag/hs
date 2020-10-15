module Factorize where

isFactor :: Int -> Int -> Bool
isFactor x n = n `mod` x == 0

factorize :: Int -> [Int]
factorize n = factorize' 1 n

factorize' :: Int -> Int -> [Int]
factorize' i n
    | i <= n = if i `isFactor` n then i : next else next
    | otherwise = []
    where
        next = factorize' (i+1) n

main = do 
    let a = factorize 10
    putStrLn $ show a