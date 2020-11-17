-- file Spec.hs
import Test.Hspec
import VowelCounter

main :: IO ()
main = hspec $ do
  describe "Vowel Counter function" $ do
    it "returns the correct count of vowels" $ do
      vowelCounter "abcde" `shouldBe` 2

    it "returns the correct count of vowels for complex string" $ do
      vowelCounter "abcdeABCDE!@$!@*%12343284Uio" `shouldBe` 7
