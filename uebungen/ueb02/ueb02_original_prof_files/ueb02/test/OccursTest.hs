module Main where

import Test.Tasty
import Test.Tasty.HUnit

import MyString
import Occurs

main = defaultMain $ testGroup "2.4: Occurs" $ [
  testCase "occurs (1)" $ occurs (s2m "Bar") (s2m "FooBaBarBaz") @?= True,
  testCase "occurs (2)" $ occurs (s2m "baz") (s2m "bbBazabba") @?= False,
  testCase "occurs * (1)" $ occurs abx (s2m "rabllyxz") @?= True,
  testCase "occurs * (2)" $ occurs abx (s2m "rlabx") @?= True,
  testCase "occurs * (3)" $ occurs abx (s2m "arblx") @?= False
  ] where abx = s2m "ab*x"
