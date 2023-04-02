cask "xm8mac" do
  arch arm: "AppleSilicon", intel: "x86_64"

  version "1.7.1"
  sha256 arm:   "c611008a7ebccc676b9d5cfeaaebc58e2598511710cffbc8e4b7039e303bd623",
         intel: "bbd65583f76141122b73969ae51143daec442522470967ba542ad105c6463f5a"

  url "https://github.com/bubio/xm8mac/releases/download/#{version}/XM8_macOS_#{arch}.zip"
  name "xm8mac"
  desc "PC-8801 emulator"
  homepage "https://github.com/bubio/xm8mac"

  app "XM8.app"
end
