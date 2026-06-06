cask "jmdict" do
  version "20260606.27056618666"
  sha256 "09d40bac5e52b38a481aa1a2da736f5b4acb5297d3dd684dbc741609a7b1f413"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
