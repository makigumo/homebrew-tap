cask "jmdict" do
  version "20250315.13869829407"
  sha256 "9a5212418dd920eb3aa36f3960ce077e55b4ee6b127f2a364af107f99d5248cd"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
