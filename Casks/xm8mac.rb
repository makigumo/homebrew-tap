cask "xm8mac" do
  arch arm: "AppleSilicon", intel: "x86_64"

  version "1.7.4"
  sha256 arm:   "a38139971d194c90fb65d19d5a6e18f380b98f22677127c54d7a74512d270ea2",
         intel: "53c08bcf4571185cacd38a726d542ea815d8860a6711b586da845cd0c207e301"

  url "https://github.com/bubio/xm8mac/releases/download/#{version}/XM8_macOS_#{arch}.dmg"
  name "xm8mac"
  desc "PC-8801 emulator"
  homepage "https://github.com/bubio/xm8mac"

  app "XM8.app"
end
