cask "jmdict" do
  version "20250621.15792498519"
  sha256 "3301e6a1d71631ef8b9702e28cfd31ccd5ae70cc1d582903857871017c967a5b"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
