cask "jmdict" do
  version "20261107.42368776381"
  sha256 "5c82e8e1b762223c6e4d37ee6a08ba5bf3c4a85bc1e60baff7e434dd3c4ef9df"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
