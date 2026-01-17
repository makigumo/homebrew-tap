cask "jmdict" do
  version "20260117.21089158799"
  sha256 "1e2385e5d6afefc32635cf60d73b4a9c8a1ac3b6b7a909b493793964ec841b5c"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
