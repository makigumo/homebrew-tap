cask "bambootracker" do
  version "0.6.4"
  sha256 "60fc024f1ae75b1ccc8942cefb50249970b56cedf2e2a4fc13f786894f31650b"

  url "https://github.com/BambooTracker/BambooTracker/releases/download/v#{version}/BambooTracker-v#{version}-macos-64bit.tar.gz"
  name "BambooTracker"
  desc "YM2608 music tracker"
  homepage "https://github.com/BambooTracker/BambooTracker"

  app "BambooTracker.app"
end
