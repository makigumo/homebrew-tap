cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.1.13"
  sha256 arm:   "80ae47fdd9f6c76a3fc931b69e04f8309c33f0d46a3857c0b11bc9e8c6816236",
         intel: "bfa796696a1abe6f732f4f6ef73b49382f41c5d5fc3bd51a04df6e3bc29e2686"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
