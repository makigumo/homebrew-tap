cask "jmdict" do
  version "20251025.18798712011"
  sha256 "96ce3d303406954f71b17a35f346bdf3c6edd537cb4c7f9a1bc27e5909c54c37"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
