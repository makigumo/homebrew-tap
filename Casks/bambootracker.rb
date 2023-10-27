cask "bambootracker" do
  version "0.6.3"
  sha256 "fec4cba21aa525ebd23a9901a7e6aae36cb1eab6f4985312fc5a6c950c5d81b4"

  url "https://github.com/rerrahkr/BambooTracker/releases/download/v#{version}/BambooTracker-v#{version}-macOS-64bit.zip"
  name "BambooTracker"
  desc "YM2608 music tracker"
  homepage "https://github.com/rerrahkr/BambooTracker"

  app "BambooTracker.app"
end
