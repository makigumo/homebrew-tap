cask "jmdict" do
  version "20251220.20389769834"
  sha256 "8f019fb072a78c96206ff1611eff0985d525b6579ec5a1c31f92d1cfd9c31134"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
