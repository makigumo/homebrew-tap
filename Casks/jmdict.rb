cask "jmdict" do
  version "20250705.16084918063"
  sha256 "2388ba3fb63bbaee62f50d58a411b31b34286a522502e1c5c9b9d5302b617715"

  url "https://github.com/makigumo/jmdict-mac-dic/releases/download/#{version}/JMDict.dmg"
  name "JMDict for Mac"
  desc "Japanese-English dictionary"
  homepage "https://github.com/makigumo/jmdict-mac-dic"

  dictionary "JMDict.dictionary"
end
