cask "jmdict" do
  version "20250607.15504636843"
  sha256 "99b0a1acfa62e2fbf0d31f00fccb2157b443c6b0c07b176c87a98c0a3985156b"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
