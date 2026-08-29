cask "jmdict" do
  version "20260829.33250309295"
  sha256 "934a4fe6e7a68fe278842ba9ab0ff37aa457771a646f655d88a0be9e231299b3"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
