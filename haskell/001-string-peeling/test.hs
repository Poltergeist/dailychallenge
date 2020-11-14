-- file Spec.hs
import Test.Hspec
import PeelString

main :: IO ()
main = hspec $ do
  describe "peelstring function" $ do
    it "returns empty list if input is too short" $ do
      peelString "a" `shouldBe` []

    it "returns empty list if input is exactly 2" $ do
      peelString "ab" `shouldBe` []

    it "returns a peeled string if input is longer then 2" $ do
      peelString "abc" `shouldBe` "b"

    it "returns a peeled string if input is a lot longer then 2" $ do
      peelString "abcdefghijklmnopqrstuvwxyz" `shouldBe` "bcdefghijklmnopqrstuvwxy"

