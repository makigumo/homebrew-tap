cask "jmdict" do
  version "20251004.18240094777"
  sha256 "300ba65ba5637ce1829bd6c993e3c8692011f04d16d79b41a60cb08a806c3629"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
