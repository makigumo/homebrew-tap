cask "xm8mac" do
  version "2.0.0"
  sha256 "c5845a84f41c359994ffb7d1fea00903742c07a536d7a24e07ccc91348a57e27"

  url "https://github.com/bubio/xm8mac/releases/download/#{version}/XM8_macOS_Universal.dmg"
  name "xm8mac"
  desc "PC-8801 emulator"
  homepage "https://github.com/bubio/xm8mac"

  depends_on :macos

  app "XM8.app"
end
