cask "jmdict" do
  version "20250524.15223834279"
  sha256 "03f44f1006ecde7dd639fba2ba37883c6b804464e129608b5d26323c3fc95db2"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
