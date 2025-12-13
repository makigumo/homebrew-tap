cask "jmdict" do
  version "20251213.20187462728"
  sha256 "7042ba1630ff3e19c6844ba813effdb359b73277186102f6eb4ee4162e6f6061"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
