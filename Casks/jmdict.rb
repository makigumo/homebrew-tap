cask "jmdict" do
  version "20241228.12524009149"
  sha256 "ec3902a7269ca0300d76a47a61de3a846c1791dd93298ea489d535ea7ce09563"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
