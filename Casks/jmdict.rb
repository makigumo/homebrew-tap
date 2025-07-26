cask "jmdict" do
  version "20250726.16536524351"
  sha256 "23418ef5a73a33d72f4a3581668691b6e2315bc76d791c1ba19f82f3527b5f0f"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
