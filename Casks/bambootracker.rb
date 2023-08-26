cask "bambootracker" do
  version "0.6.2"
  sha256 "6537f1213bf1d03687e02f642bcb1f5fa37738caf8c43c7de08695c1051de75d"

  url "https://github.com/rerrahkr/BambooTracker/releases/download/v#{version}/BambooTracker-v#{version}-macOS-64bit.zip"
  name "BambooTracker"
  desc "YM2608 music tracker"
  homepage "https://github.com/rerrahkr/BambooTracker"

  app "BambooTracker.app"
end
