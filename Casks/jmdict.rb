cask "jmdict" do
  version "20250104.12607818573"
  sha256 "1b93e4bf0e28f85d5dc2f30a056c65baa37f33493f864cd0f625302ce7bd6e3e"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
