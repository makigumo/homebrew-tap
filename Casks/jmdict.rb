cask "jmdict" do
  version "20250913.17692237947"
  sha256 "697a81a4ce6f71220dd9b87e0b92925d05f53ced22001f5b1dc8965b3d04940c"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
