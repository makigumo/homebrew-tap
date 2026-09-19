cask "jmdict" do
  version "20260919.35434297800"
  sha256 "5896cd23ef8bcc75517e887fddf712bb2fbb1ed58ec4055298f4fecd19598523"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
