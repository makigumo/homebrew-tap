cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.1.12"
  sha256 arm:   "ae03d53d22c8679a0d017d6eca74fee1ec8bd8d74039007f1ea16acfb579c681",
         intel: "903d483ab459f74038a9e542427ed141852548390b1d4da119a8517928a9ab06"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
