cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.3.12"
  sha256 arm:   "25d1af8fcaf11130d4f849a01f4a0b3c0e10175626ec78457f09d8fcbaea0801",
         intel: "b17383a41b9639a679e17716d287ac849f412e8c11210a5bec8c5a55d14a55e6"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
