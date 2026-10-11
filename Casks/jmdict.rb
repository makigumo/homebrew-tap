cask "jmdict" do
  version "20261010.38046942969"
  sha256 "6048cc3f4805ce164b5d916c215501d220cbc8b5ea2550498ab1829a608d9765"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
