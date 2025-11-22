cask "jmdict" do
  version "20251122.19590895255"
  sha256 "31622c6da1474f00d752bea4b18ee9f1c520ea54f5105d24bc38821cafee7cac"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
