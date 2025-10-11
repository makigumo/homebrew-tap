cask "jmdict" do
  version "20251011.18424957392"
  sha256 "563b90ea912008cad78f74f7cefef956f61d31b22e7707c2f099474ce39fd060"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
