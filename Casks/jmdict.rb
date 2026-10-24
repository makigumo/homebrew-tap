cask "jmdict" do
  version "20261024.40081594116"
  sha256 "8785b35d78c92179daa6f39cf30d66dcca09e62044860705dcb696204744c818"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
