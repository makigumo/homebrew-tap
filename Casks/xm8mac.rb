cask "xm8mac" do
  version "1.7.7"
  sha256 "126f23c37f277a2af2b7032025b89ccf47ef92b260a75fa23eb00bdc37404ccc"

  url "https://github.com/bubio/xm8mac/releases/download/#{version}/XM8_macOS_Universal.dmg"
  name "xm8mac"
  desc "PC-8801 emulator"
  homepage "https://github.com/bubio/xm8mac"

  app "XM8.app"
end
