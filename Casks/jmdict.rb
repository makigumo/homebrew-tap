cask "jmdict" do
  version "20250920.17875795766"
  sha256 "15ad63c244a234b402df22db229939269d40abfc80c387198b9231af6f50b7f8"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
