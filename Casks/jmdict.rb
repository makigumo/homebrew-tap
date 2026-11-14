cask "jmdict" do
  version "20261114.43592517527"
  sha256 "09507c61b4e8cd7fd873e950998419626f7474e77a59bf44b1f835035a6d4011"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
