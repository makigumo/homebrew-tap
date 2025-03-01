cask "jmdict" do
  version "20250301.13601475408"
  sha256 "00808733b52249b1fb986cff271aead90a9ef98ce5898d80c0c72b3b91d6e16c"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
