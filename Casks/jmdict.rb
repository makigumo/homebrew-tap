cask "jmdict" do
  version "20260124.21309915010"
  sha256 "7b2b206ebc3e9c14200c6b11bbd6e9ff3c7e8055da052df2066a908e77c52652"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
