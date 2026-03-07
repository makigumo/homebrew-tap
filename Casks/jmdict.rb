cask "jmdict" do
  version "20260307.22793094520"
  sha256 "761237d6fdf5233d8fd37bacbeda52da8890c4ae2f9402bf074e6730144ce9c8"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
