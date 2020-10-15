module PrimeTests where

import Test.Hspec
import Text.Printf (printf)

import Prime

testIsPrime :: Integer -> Spec
testIsPrime x = it(printf "%d is a prime" x) $ isPrime x

testIsNotPrime :: Integer -> Spec
testIsNotPrime x = it(printf "%d is not a prime" x) $ not $ isPrime x

main = hspec $ do
    describe "isPrime" $ do
        testIsPrime 2
        testIsPrime 3
        testIsPrime 5
        testIsPrime 7
        testIsPrime 353
    describe "isNotPrime" $ do
        testIsNotPrime 4
        testIsNotPrime 6
        testIsNotPrime 8
        testIsNotPrime 9
        testIsNotPrime 354
        -- testIsPrime 203805573392104303
        -- testIsPrime 11855736327275077005096917577478432819