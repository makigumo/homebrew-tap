cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.3.11"
  sha256 arm:   "d5329f3b5d265a37082080be20cee4be97fac576733b85ecf0e8923477d1808a",
         intel: "bcf9cf3f24e45bd239da1704f515c6a8b62a781145c026e196e02242d9e98525"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
