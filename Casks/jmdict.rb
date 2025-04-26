cask "jmdict" do
  version "20250426.14678099024"
  sha256 "a8b69e6fe214418465f55b700dcfbcbcf2dc5d76617e8126cc0e0f8f1461b814"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
