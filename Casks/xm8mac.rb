cask "xm8mac" do
  arch arm: "AppleSilicon", intel: "x86_64"

  version "1.7.0"
  sha256 arm:   "dca7d5e154e3cbc76cac8b0fb1a0c5a81a8fd7d9fcb1cb15a4bfb1241150f991",
         intel: "f8645b7bce4587524302f1529c4c8023c4e08f46d0d2a06c274df1fa9bdbee84"

  url "https://github.com/bubio/xm8mac/releases/download/#{version}/XM8_macOS_#{arch}.zip"
  name "xm8mac"
  desc "PC-8801 emulator for macOS"
  homepage "https://github.com/bubio/xm8mac"

  app "XM8.app"
end
