cask "jmdict" do
  version "20260808.31242341817"
  sha256 "f323103a99f4bbfe010605d8ab27c5ca36ae598a69b082fde49217f8e48421c5"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
