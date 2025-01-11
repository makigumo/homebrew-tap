cask "jmdict" do
  version "20250111.12721507189"
  sha256 "bbb25408ecfc073e358f3095ea4288c59e9bc22eb923cbd6b959a48d130dd60c"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
