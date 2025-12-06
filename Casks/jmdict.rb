cask "jmdict" do
  version "20251206.19983837717"
  sha256 "fe6b0e703ce16bd6bda391fd47d2a64b4bfbeb2d8e38716088f779848444d362"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
