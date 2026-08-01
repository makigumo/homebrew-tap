cask "jmdict" do
  version "20260801.30689835258"
  sha256 "bfe1f11c2c9728d155a5a805e093554ec6d62d1822d1c0d733cc48837be0a3e9"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
