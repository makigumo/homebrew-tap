cask "jmdict" do
  version "20250329.14142559169"
  sha256 "ab6adc1258e9f7945ba050906090dde42e9abd7cf61db6e500b1f3bbb11e1118"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
