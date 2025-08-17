cask "xm8mac" do
  version "1.7.6"
  sha256 "6531b44334a135454a8f7ada1dc2be5e8db910263f24cd00f029858b4b342d0c"

  url "https://github.com/bubio/xm8mac/releases/download/#{version}/XM8_macOS_Universal.dmg"
  name "xm8mac"
  desc "PC-8801 emulator"
  homepage "https://github.com/bubio/xm8mac"

  app "XM8.app"
end
