cask "jmdict" do
  version "20250222.13469929839"
  sha256 "ca1703765072a2f050825848df9e9052a93aca54bab2c6487113d094ec19e745"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
