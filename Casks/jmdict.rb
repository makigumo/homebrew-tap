cask "jmdict" do
  version "20260704.28699619308"
  sha256 "bec9782152ffc0a84d668278dfcd2b065750aa7a99784e585464137d433470d4"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
