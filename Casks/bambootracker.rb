cask "bambootracker" do
  version "0.6.0"
  sha256 "94c802da5bb917c5c9fd44abb154887a0fdbe67257f7ba8a3e0d4c95ec75bc81"

  url "https://github.com/rerrahkr/BambooTracker/releases/download/v#{version}/BambooTracker-v#{version}-macOS-64bit.zip"
  name "BambooTracker"
  desc "YM2608 music tracker"
  homepage "https://github.com/rerrahkr/BambooTracker"

  app "BambooTracker.app"
end
