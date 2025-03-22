cask "jmdict" do
  version "20250322.14005548266"
  sha256 "8bf899d2e8dc3db788c564caaca342316dd02ec649edc62946e310cd685cec25"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
