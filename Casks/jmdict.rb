cask "jmdict" do
  version "20250308.13734365311"
  sha256 "4fadb7e8c3539ff7707fc9c02974fbb9ce4f0a2b975d867a0df7bc4fd043618e"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
