cask 'wadoku' do
  version '20220703'
  sha256 'ad53bf10164d90709851cbac4567824539ce5e9a1428a622add10a6d57283f8e'

  url "https://www.wadoku.de/downloads/mac/Wadoku#{version}.dictionary.dmg"
  name 'Wadoku for macOS/iOS'
  homepage 'https://github.com/makigumo/wadoku-mac-dic'

  dictionary 'Wadoku.dictionary'
end
