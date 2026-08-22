cask "jmdict" do
  version "20260822.32554540323"
  sha256 "012509c1018dfda6c940f7e4282d8f1f82bfe2e93d34c5f92346dcac0f53cc9b"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
