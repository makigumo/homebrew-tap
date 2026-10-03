cask "jmdict" do
  version "20261003.37115876254"
  sha256 "a1e5019bb3db7a5059d36b021e3de5a383bac3152a6b2b7fc09ed038de65786a"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
