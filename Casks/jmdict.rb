cask "jmdict" do
  version "20260516.25955970514"
  sha256 "4b63ed5585d69ab6c0ff806d9f02a120d24a5e4d99877bd215e1c6367f68826a"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
