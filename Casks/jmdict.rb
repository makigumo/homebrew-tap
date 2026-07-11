cask "jmdict" do
  version "20260711.29144128023"
  sha256 "4fc20c2deb944b0affde70bd7292c989c05bd61b110190a32f8006e61c68f7bf"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
