cask "jmdict" do
  version "20250809.16845884209"
  sha256 "4909270456c10d25a1a512c406e17c7ef38e35fa6b174c9c8a4579e92cde4159"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
