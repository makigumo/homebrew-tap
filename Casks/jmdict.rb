cask "jmdict" do
  version "20241221.12442487751"
  sha256 "70cb35ece3fd99e2b8f0920bbff3f4e1859ed8564f8d8ba6883daa8b934532a0"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
