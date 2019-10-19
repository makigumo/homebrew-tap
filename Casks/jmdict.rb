cask 'jmdict' do
  version 'latest'
  sha256 :no_check

  url "https://github.com/makigumo/jmdict-mac-dic/releases/latest/download/JMDict.dmg"
  name 'JMDict for Mac'
  homepage 'https://github.com/makigumo/jmdict-mac-dic'

  dictionary 'JMDict.dictionary'
end
