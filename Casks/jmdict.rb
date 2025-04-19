cask "jmdict" do
  version "20250419.14546061013"
  sha256 "2994418e48a0bb4cd4d3e2bbac18996a4ddd29b2cc932e7a1d03b0e012fedd43"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
