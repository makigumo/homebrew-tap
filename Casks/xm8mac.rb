cask "xm8mac" do
  arch arm: "AppleSilicon", intel: "x86_64"

  version "1.7.3"
  sha256 arm:   "6f69e52fce69123219146158b445268148061cb52fc6b0a2f73d58129f4e4ec1",
         intel: "a84328a24302953d70f9bf39bb2c292759bb779b4dc75db96e6288b1e2a14b9b"

  url "https://github.com/bubio/xm8mac/releases/download/#{version}/XM8_macOS_#{arch}.dmg"
  name "xm8mac"
  desc "PC-8801 emulator"
  homepage "https://github.com/bubio/xm8mac"

  app "XM8.app"
end
