cask "jmdict" do
  version "20260926.36233722474"
  sha256 "ccc47f0178c640528f986d911706af18adfc9b26dbe2187d1193588e910b6314"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
