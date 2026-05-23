cask "jmdict" do
  version "20260523.26327041018"
  sha256 "939846f7b62ec6853600a9f3bc64aab58eef7634fa3a50786955c40359a797ec"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
