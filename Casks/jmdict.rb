cask "jmdict" do
  version "20260613.27461557817"
  sha256 "2b92b88c8e43126767e3642e1024d5647d5d8828cf56b39c38557f6ac3431b9f"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
