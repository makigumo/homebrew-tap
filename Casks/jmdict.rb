cask "jmdict" do
  version "20250628.15940866076"
  sha256 "7cbc73ac9314bdbce63977277cbda88ad1c1f4f12750cfac2cd08c1765347338"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
