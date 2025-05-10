cask "jmdict" do
  version "20250510.14942256504"
  sha256 "1c1c67c9fa823faddd439a409b2f9afb2ae390a7f1e2d2ca8166176fa9e73589"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
