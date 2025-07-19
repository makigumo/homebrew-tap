cask "jmdict" do
  version "20250719.16385399306"
  sha256 "0bdb2a5e36706ec65f776ebc451ff04895423886b6bfee23124e883b6ecc706e"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
