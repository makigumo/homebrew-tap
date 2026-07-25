cask "jmdict" do
  version "20260725.30149138738"
  sha256 "be37dcb0706434ee8c373c5f3bb45cedfc9b06a6219f68266a7abbdba0ffb3ac"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
