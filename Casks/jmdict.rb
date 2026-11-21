cask "jmdict" do
  version "20261121.44908076072"
  sha256 "5c7eb4aebd17ebeabfbd58dce3b48c0979a0b4c0b9a0013041c3584fb6870eb8"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
