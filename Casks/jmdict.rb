cask "jmdict" do
  version "20260509.25594984266"
  sha256 "5b42f9aca5881c0e1437d4eec1c725f8d8529807a6c094f7e6abdbc8e0c16289"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
