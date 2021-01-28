cask 'wadoku' do
  version '20210110'
  sha256 '1cd1a14d6673ed9cc70f78b4e46b74a9f81a0b58caa7473067b77af9fc1999da'

  url "https://www.wadoku.de/downloads/mac/Wadoku#{version}.dictionary.dmg"
  name 'Wadoku for macOS/iOS'
  homepage 'https://github.com/makigumo/wadoku-mac-dic'

  dictionary 'Wadoku.dictionary'
end
