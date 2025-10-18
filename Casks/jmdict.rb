cask "jmdict" do
  version "20251018.18611302552"
  sha256 "1ca471acb8718f08e63cfc593f49369ba8b6b71bed6b0bccc606a9511c300819"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
