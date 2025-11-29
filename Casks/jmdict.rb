cask "jmdict" do
  version "20251129.19779514596"
  sha256 "93255596d1108746af3971632d321c760cca49ae3eb374b1135ca0593b9ab603"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
