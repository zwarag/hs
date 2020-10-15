module FactorizeTests where

import Test.Hspec
import Text.Printf (printf)

import Factorize

testIsFactor :: Int -> Int -> Spec
testIsFactor x n = it(printf "%d is a factor of %d" x n) $ isFactor x n

testIsNotFactor :: Int -> Int -> Spec
testIsNotFactor x n = it(printf "%d is not a factor of %d" x n) $ not $ isFactor x n

testFactorize :: Int -> [Int] -> Spec
testFactorize x l = it (printf "factors of %d should be %s" x (show l)) $ l == factorize x

main = hspec $ do
    describe "isFactor" $ do
        testIsFactor 3 6
        testIsFactor 2 6
        testIsFactor 1 6
        testIsNotFactor 5 6
    describe "factorize" $ do
        testFactorize 1 [1]
        testFactorize 2 [1,2]
        testFactorize 3 [1,3]
        testFactorize 4 [1,2,4]
        testFactorize 5 [1,5]
        testFactorize 6 [1,2,3,6]
        testFactorize 7 [1,7]
        testFactorize 8 [1,2,4,8]
        testFactorize 9 [1,3,9]
        testFactorize 10 [1,2,5,10]