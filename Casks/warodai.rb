cask 'warodai' do
  version 'latest'
  sha256 :no_check

  url "https://github.com/makigumo/warodai-mac-dic/releases/latest/download/Warodai.dmg"
  name 'Warodai for Mac'
  homepage 'https://github.com/makigumo/warodai-mac-dic'

  dictionary 'Warodai.dictionary'
end
