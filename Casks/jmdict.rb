cask "jmdict" do
  version "20260411.24276240552"
  sha256 "8c0572c4ab3a99f326f60884f17d663b95e6d35f000d6fd82eb457be14f1814b"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
