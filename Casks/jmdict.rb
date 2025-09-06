cask "jmdict" do
  version "20250906.17510462532"
  sha256 "e3f4b50077dabc8f6a87c80a273a634ee1acb06ea3c4d5fa06bc484bf63df073"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
