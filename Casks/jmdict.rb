cask "jmdict" do
  version "20251227.20534872047"
  sha256 "2330a200f144471af9c09b0d4efc577e8b18925734eda7c21e963a928634519f"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
