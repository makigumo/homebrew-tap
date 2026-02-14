cask "jmdict" do
  version "20260214.22012205361"
  sha256 "a9236cc4948f311e26d1234b47ea5ac044f5f0aac4ec898312d28a6b82fbb682"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
