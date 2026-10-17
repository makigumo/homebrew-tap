cask "jmdict" do
  version "20261017.39019824573"
  sha256 "42ef8504a0d5dd006002d1a2d183b52f11ce2870210a6b68820a3637f82535a6"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
