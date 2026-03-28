cask "jmdict" do
  version "20260328.23678900227"
  sha256 "990c7c3d3c18813d49b311c0f55647c0a2fe5ea7b232c486d9845e095d99b485"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
