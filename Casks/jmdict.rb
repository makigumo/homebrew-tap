cask "jmdict" do
  version "20250614.15648811379"
  sha256 "dd149c7d764b22d53daca4be96aa83b2f90b474f427b75b44a9b5134ec45e42a"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
