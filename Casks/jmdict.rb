cask "jmdict" do
  version "20250830.17339825756"
  sha256 "86222c3be73700484fba677a1ec9359d5fb42827abcfa3a5e18eabf7d7c73f8f"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
