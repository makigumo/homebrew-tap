cask 'nps-browser' do
  version '1.4.5'
  sha256 'df24e67c19a583a7b3fcb01224537fd8cb812475f7430c3b7a1617fe8e371985'

  url "https://github.com/JK3Y/NPS-Browser-macOS/releases/download/v#{version}/NPSBrowser.v#{version}.dmg"
  name 'NPS Browser'
  homepage 'https://github.com/JK3Y/NPS-Browser-macOS'

  app 'NPS Browser.app'
end
