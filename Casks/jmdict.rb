cask "jmdict" do
  version "20250201.13085530140"
  sha256 "7b162bbac223099ecfa77aaf27f202bacaabebcf34d60c053e4b297b83d300f6"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
