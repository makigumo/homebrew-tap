cask "xm8mac" do
  version "1.7.8"
  sha256 "454e31dd7e8d1a882115c3117ce43b8d7c91c414e514a3dc68b351bcd8f536c4"

  url "https://github.com/bubio/xm8mac/releases/download/#{version}/XM8_macOS_Universal.dmg"
  name "xm8mac"
  desc "PC-8801 emulator"
  homepage "https://github.com/bubio/xm8mac"

  app "XM8.app"
end
