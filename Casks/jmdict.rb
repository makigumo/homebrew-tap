cask "jmdict" do
  version "20250118.12841189374"
  sha256 "20602c1059128157b3d18def40dcf8ebfbe39eb9580b49bad00aafa92d7dafde"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
