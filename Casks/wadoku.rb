cask 'wadoku' do
  version '20210704'
  sha256 '9b05de5fdb404e781f2a9fe63829181e68fbcd3104bac49696bbfa0c59bd985b'

  url "https://www.wadoku.de/downloads/mac/Wadoku#{version}.dictionary.dmg"
  name 'Wadoku for macOS/iOS'
  homepage 'https://github.com/makigumo/wadoku-mac-dic'

  dictionary 'Wadoku.dictionary'
end
