cask "jmdict" do
  version "20260131.21539643122"
  sha256 "25a804da1f8cdc97a44af4f828a776a05e0c425d4d11afd1f543a571a746304a"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
