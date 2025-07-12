cask "jmdict" do
  version "20250712.16234763545"
  sha256 "f4b2a3647ecf07b60bdd1a027488e9f9398afbacffc1d3b07695cc05ed04fa62"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
