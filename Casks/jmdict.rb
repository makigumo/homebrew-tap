cask "jmdict" do
  version "20260418.24598610819"
  sha256 "7d45cc6966bded595565eea631fabc1d74fb8b52218037b63612adaad594f3e9"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
