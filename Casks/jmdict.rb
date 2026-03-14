cask "jmdict" do
  version "20260314.23081732674"
  sha256 "87969b162ff495c16854176b94d65983c3f7ab69bb4362e8db3867054bc8c1fe"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
