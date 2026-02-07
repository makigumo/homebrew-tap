cask "jmdict" do
  version "20260207.21775158789"
  sha256 "011d604a0f0a59539007bf8ffc1f03d7bc660881da619ebc64b5eda86cdf858c"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
