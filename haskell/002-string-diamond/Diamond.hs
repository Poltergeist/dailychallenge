module Diamond (diamond) where

diamond :: Int -> IO ()
diamond x
  | x `mod` 2 == 0 = putStrLn "Even Number"
  | otherwise = paint x 0
  where
    paint x y
      | x - 1  <= y = putStrLn ((concat $ take (abs (x `div` 2 - y)) $ repeat " ") ++ (concat $ take (x - (y * 2 + 1) + x ) $ repeat "*"))
      | y * 2 + 1 > x = do
          putStrLn $ concat $ (take (abs (x `div` 2 - y)) $ repeat " ") ++ (take (x - (y * 2 + 1) + x ) $ repeat "*")
          paint x (y + 1)
      | otherwise = do
          putStrLn $ concat $ (take (abs (x `div` 2 - y)) $ repeat " ") ++ (take (y * 2 + 1) $ repeat "*")
          paint x (y + 1)

main :: IO ()
main = do
  diamond 2
  diamond 7
  diamond 17
  diamond 8
