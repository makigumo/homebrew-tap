cask "jmdict" do
  version "20260110.20873509781"
  sha256 "373ade23d342e3270d404af6cdb180adf274a1ea076a203d7dd0af0239889060"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
