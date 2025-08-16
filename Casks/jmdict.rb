cask "jmdict" do
  version "20250816.17004767511"
  sha256 "195f2741b334200bf7b6dc4f254fe1bf41aca9169f9943cbd11ac6395e479313"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
