cask "jmdict" do
  version "20260221.22251389032"
  sha256 "c4adc293177262add11556483e82ecbc10d28d4fc6acde7f26d1f4f0a13ffd42"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
