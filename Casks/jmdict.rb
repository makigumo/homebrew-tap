cask "jmdict" do
  version "20260425.24924528761"
  sha256 "de31d114c319a649a23283ca0c5b34e286009a75db8abe91865312a60bd73e35"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
