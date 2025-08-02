cask "jmdict" do
  version "20250802.16690324162"
  sha256 "f694ca394c2a23fe08bdf85c5ae8e699035889f502504c43a546dc00218aae7c"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
