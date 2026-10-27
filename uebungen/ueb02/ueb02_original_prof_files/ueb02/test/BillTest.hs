module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Bill

main = defaultMain $ testGroup "2.2: Die Rechnung bitte" [
  testCase "center 10" $ center 10 "abc" @?= "   abc    \n",
  testCase "formatPosten 20" $ formatPosten 20 "Foobaz" 1302 @?= "Foobaz      13.02 EU\n",
  testCase "rechung ..." $
     rechnung "RECHNUNG #372" "Die Firma dankt!" 20
       (Posten "Foo" 1302 (Posten "Baz" (-92) (Posten "Hugo" 0 Leer))) @?=
     "   RECHNUNG #372    \n                    \nFoo         13.02 EU\nBaz         -0.92 EU\nHugo         0.00 EU\n====================\nSumme:      12.10 EU\n                    \n  Die Firma dankt!  \n"
  ]
