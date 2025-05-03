cask "jmdict" do
  version "20250503.14807849720"
  sha256 "5b8fe36518447c7d52dad0965a161126add81feb0cdd58e3e3e2995468166e2d"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
