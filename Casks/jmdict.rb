cask "jmdict" do
  version "20251101.18991994834"
  sha256 "7dbe2f6d375cb3b123357bc354c105468d05ed7ded121eff63391e859a295511"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
