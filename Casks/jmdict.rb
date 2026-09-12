cask "jmdict" do
  version "20260912.34684979740"
  sha256 "b3e70841f83a8d649624a91b65c0ed63be933e5e736fdba4295540f3338b3c06"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
