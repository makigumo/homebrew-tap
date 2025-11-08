cask "jmdict" do
  version "20251108.19188546959"
  sha256 "a3fde96889736d4fbd618d3ce65d672c22775a8d63b7fc76f06e43b3d3cb31ea"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
