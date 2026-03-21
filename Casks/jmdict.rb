cask "jmdict" do
  version "20260321.23373220719"
  sha256 "e1ee2c21c26bd572e4c7fc7ad8b3a5b336e8c2a73cd5e607768dd066e3221a66"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
