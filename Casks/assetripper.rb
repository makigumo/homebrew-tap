cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.2.5"
  sha256 arm:   "952ceb57e17e153ad91483c20cb64ad1b1156b5e8d3825ca6df0e1cd32742296",
         intel: "9276b9c69ea5623e15f5c1ce56bee60c97314e7af39aa44b6436b700159547e0"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
