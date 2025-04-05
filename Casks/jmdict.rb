cask "jmdict" do
  version "20250405.14278778774"
  sha256 "3d7bf1716874996eb49821f69c615afa5dc9a27e62adab44003ffa586f0a5606"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
