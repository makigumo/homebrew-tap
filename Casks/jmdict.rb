cask "jmdict" do
  version "20260627.28283037816"
  sha256 "77560488d2af68720924b7f6413ef63cee0c49a030153c7d7b35351758d3065d"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
