cask "jmdict" do
  version "20250412.14416544696"
  sha256 "04543f72e5c8b18274b321876cb6bd43e1842c29a661e51b4567300866a7e0c2"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
