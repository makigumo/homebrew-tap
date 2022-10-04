cask "bambootracker" do
  version "0.5.3"
  sha256 "8eb0f96bbb2666ec5020157e37a21ebbfd803eb2b109aaf1c0ab8fb8ca037a68"

  url "https://github.com/rerrahkr/BambooTracker/releases/download/v#{version}/BambooTracker-v#{version}-macOS-64bit.zip"
  name "BambooTracker"
  desc "YM2608 music tracker"
  homepage "https://github.com/rerrahkr/BambooTracker"

  app "BambooTracker.app"
end
