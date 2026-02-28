cask "jmdict" do
  version "20260228.22514401616"
  sha256 "db2abd4e512d559e5ab2f647a6e141cba38f76bc06270cfa7bd8eed6ee7b8402"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
