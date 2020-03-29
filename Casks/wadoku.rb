cask 'wadoku' do
  version '20200105'
  sha256 '7952ecafa4a9da05710a59ab113194261f695dce7ca469244f3292750337f64e'

  url "https://www.wadoku.de/downloads/mac/Wadoku#{version}.dictionary.dmg"
  name 'Wadoku for macOS/iOS'
  homepage 'https://github.com/makigumo/wadoku-mac-dic'

  dictionary 'Wadoku.dictionary'
end
