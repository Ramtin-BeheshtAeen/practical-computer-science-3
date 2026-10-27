module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Coffee

main = defaultMain $ testGroup "2.1: Kalter Kaffee" $ [
  let b = order_getraenk (order_getraenk start CafeCreme L) Cappuccino M
  in testCase "zwischensumme" $
     zwischensumme b @?= 430,
  let b1 = order_gebaeck start Croissant
      b2 = order_getraenk b1 Cappuccino L
      b3 = order_getraenk b2 Cappuccino M
      b4 = order_gebaeck b3 Croissant
      b5 = order_getraenk b4 Cappuccino L
  in testCase "sonderangebot (zwei Cappuccino L, ein Cappuccino M, zwei Croissants)" $ 
     rabatt b5 @?= 30,
  let b1 = order_gebaeck start (Cookie Schokolade)
      b2 = order_gebaeck b1 (Cookie Vanille)
      b3 = order_gebaeck b2 (Cookie Schokolade)
  in testCase "sonderangebot (zwei Cookie Schoko, ein Cookie Vanille)" $ 
     rabatt b3 @?= 95
  ]

