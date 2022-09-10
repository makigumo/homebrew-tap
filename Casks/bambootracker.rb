cask "bambootracker" do
  version "0.5.2"
  sha256 "fef3db340bef567aee0f91c3145da3a505642aa6c3f928d43e8113c1a4f25fdd"

  url "https://github.com/rerrahkr/BambooTracker/releases/download/v#{version}/BambooTracker-v#{version}-macOS-64bit.zip"
  name "BambooTracker"
  homepage "https://github.com/rerrahkr/BambooTracker"

  app "BambooTracker.app"
end
