cask "jmdict" do
  version "20260502.25246392152"
  sha256 "7d36c2fa3bd49868bfe61c069e2d4dd10069285f5bf666ecf72c3a39fb0a3bdf"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
