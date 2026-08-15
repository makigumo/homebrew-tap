cask "jmdict" do
  version "20260815.31867019001"
  sha256 "0555e40f6a5055d9fb739fbd0d32b1152f5e651ad85828ef621947e349f1c038"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
