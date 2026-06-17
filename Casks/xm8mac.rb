cask "xm8mac" do
  version "1.7.9"
  sha256 "3eac2462046c8fcf29606b5733aafdddc7491041a736f28232d657da8a93c8b0"

  url "https://github.com/bubio/xm8mac/releases/download/#{version}/XM8_macOS_Universal.dmg"
  name "xm8mac"
  desc "PC-8801 emulator"
  homepage "https://github.com/bubio/xm8mac"

  depends_on :macos

  app "XM8.app"
end
