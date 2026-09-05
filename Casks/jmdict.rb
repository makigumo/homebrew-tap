cask "jmdict" do
  version "20260905.33956461269"
  sha256 "e154bc65a4c858914b21466b63c2f1dbe810fed30c5718a4cecf126ff2971674"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
