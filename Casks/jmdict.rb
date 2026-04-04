cask "jmdict" do
  version "20260404.23972766121"
  sha256 "e01da89fb96b9bbc8ab7c0ad6a7d3031735c5766efb6cc52e5b589a939a1ed09"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
