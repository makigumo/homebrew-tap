cask "jmdict" do
  version "20250517.15082036062"
  sha256 "e57db2c8a60f70cb87fb25ee5e67f3355d711ec45d3c93ef02268f3f1c8132fa"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
