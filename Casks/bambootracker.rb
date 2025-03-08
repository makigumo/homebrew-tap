cask "bambootracker" do
  version "0.6.5"
  sha256 "7fdb1babec5771f888c0df7b7d0b372a8219fbe29ef2333f22ad03ebd2ea39fc"

  url "https://github.com/BambooTracker/BambooTracker/releases/download/v#{version}/BambooTracker-v#{version}-macos-64bit.tar.gz"
  name "BambooTracker"
  desc "YM2608 music tracker"
  homepage "https://github.com/BambooTracker/BambooTracker"

  app "BambooTracker.app"
end
