cask "jmdict" do
  version "20250823.17171678075"
  sha256 "ded2353d097f49291cf24867ec2d7115551d3ad0dd630f2282436075883835a9"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
