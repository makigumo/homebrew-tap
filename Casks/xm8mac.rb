cask "xm8mac" do
  arch arm: "AppleSilicon", intel: "x86_64"

  version "1.7.2"
  sha256 arm:   "a6092e93d01c15e14d8cc146b5a2e57b0545b75c50dba1a4f8a6d195b2da9ba5",
         intel: "91a07be15f1c724880d6214a7bc96563232c64c917c34ec3f2ae377dac2b2f40"

  url "https://github.com/bubio/xm8mac/releases/download/#{version}/XM8_macOS_#{arch}.zip"
  name "xm8mac"
  desc "PC-8801 emulator"
  homepage "https://github.com/bubio/xm8mac"

  app "XM8.app"
end
