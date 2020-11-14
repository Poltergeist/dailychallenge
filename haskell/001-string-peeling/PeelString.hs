module PeelString (peelString) where

peelString :: [Char] -> [Char]
peelString x = if length x > 2 then init $ tail x else []
