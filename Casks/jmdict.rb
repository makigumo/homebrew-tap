cask "jmdict" do
  version "20260620.27865506839"
  sha256 "38a31cc2987b2899cf0d20ee5a5445fdddeab5f3ff6600679d5492fb320bbdc0"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
