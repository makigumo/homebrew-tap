cask "jmdict" do
  version "20250215.13342086198"
  sha256 "0b92636fabe01201f626a166799110f505bdb03f7c0c6f52701ab02583cd9b63"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
