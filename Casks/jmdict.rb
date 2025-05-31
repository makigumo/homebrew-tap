cask "jmdict" do
  version "20250531.15360524449"
  sha256 "009754eb5bd1b167e7c8923be0cae0f3404a0e859c16504cc4d42102d4b29171"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
