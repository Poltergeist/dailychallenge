module VowelCounter (vowelCounter) where
import Data.Char

vowelCounter :: [Char] -> Int
vowelCounter "" = 0
vowelCounter x
  | h `elem` "aeiou" = 1 + (vowelCounter t)
  | otherwise = vowelCounter t
  where
    h = toLower(head x)
    t = tail x
