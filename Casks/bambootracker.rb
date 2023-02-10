cask "bambootracker" do
  version "0.6.1"
  sha256 "d949459540ef082308f8be7d4a0e024ad1dc9791e80a9615dc368ffde9643f38"

  url "https://github.com/rerrahkr/BambooTracker/releases/download/v#{version}/BambooTracker-v#{version}-macOS-64bit.zip"
  name "BambooTracker"
  desc "YM2608 music tracker"
  homepage "https://github.com/rerrahkr/BambooTracker"

  app "BambooTracker.app"
end
