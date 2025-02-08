cask "jmdict" do
  version "20250208.13212647552"
  sha256 "180e59a4f8a80b3aa6ea6a8f04c2d48a8b2a99166ee990e9cea8d056f0f6ab98"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
