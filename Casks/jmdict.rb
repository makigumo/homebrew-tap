cask "jmdict" do
  version "20260718.29635001232"
  sha256 "e8d5b16f15e09f014ef871fc92223fde99f6457b5fe660d3b22de917fdb8fbf8"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
