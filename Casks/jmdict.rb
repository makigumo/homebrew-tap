cask "jmdict" do
  version "20261128.46152231644"
  sha256 "f9709671f96eea7e3fba599e975ec0b76eff99d3dc3370d6085d8ec56c3dc1b9"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
