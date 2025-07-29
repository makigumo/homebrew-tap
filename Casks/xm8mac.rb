cask "xm8mac" do
  arch arm: "AppleSilicon", intel: "x86_64"

  version "1.7.5"
  sha256 arm:   "c4b11e8b82c09d43b851a0a07269f5faec5c61a406fd724382073040f0806a15",
         intel: "c7a950e1f5dfc06a360f4a840d37121e966faceec1b55c6c8be2c174c43a2ab7"

  url "https://github.com/bubio/xm8mac/releases/download/#{version}/XM8_macOS_#{arch}.dmg"
  name "xm8mac"
  desc "PC-8801 emulator"
  homepage "https://github.com/bubio/xm8mac"

  app "XM8.app"
end
