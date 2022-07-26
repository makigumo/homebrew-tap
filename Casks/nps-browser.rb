cask "nps-browser" do
  version "1.4.6"
  sha256 "d4f12f178e1147070fac36a288e53a53a9ae47e89530041e54e559b20efda620"

  url "https://github.com/JK3Y/NPS-Browser-macOS/releases/download/v#{version}/NPSBrowser.dmg"
  name "NPS Browser"
  homepage "https://github.com/JK3Y/NPS-Browser-macOS"

  app "NPS Browser.app"
end
