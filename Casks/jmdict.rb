cask "jmdict" do
  version "20260103.20672868021"
  sha256 "123a3f767403f1c3ad343aac480fbe8d37644feeecabc3000eabfd228dfa9e1e"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
