cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.3.5"
  sha256 arm:   "37f2fd0fc02682fcf4667d6b4b189577d3bf93da980029043f469c63058e1ac9",
         intel: "145ee0e55bfd83b6f9e0796ec274821770f8078540e1b9f01920fca064d96186"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
