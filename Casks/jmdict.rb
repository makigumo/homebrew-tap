cask "jmdict" do
  version "20250125.12962136012"
  sha256 "51124cc955dbd04b9531218b3b5ea2ea0aedb808303f809f2389aca095936fd8"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
