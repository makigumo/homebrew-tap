cask "jmdict" do
  version "20250927.18055547527"
  sha256 "d535edae142c90447e1552b5e1797d8ad1c29625adfe6227c9a4d116158913e3"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
