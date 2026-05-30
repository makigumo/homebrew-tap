cask "jmdict" do
  version "20260530.26678345801"
  sha256 "417194d5eddf1c161a37236e24850b93bdffe075418a73cf529e20f031c42786"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  depends_on :macos

  dictionary "JMDict.dictionary"
end
