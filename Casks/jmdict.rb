cask "jmdict" do
  version "20261031.41194146579"
  sha256 "8653db67e041b9ab576d16db1d615d71dfa71f2c66a1cc9c139638da4c8f6564"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
