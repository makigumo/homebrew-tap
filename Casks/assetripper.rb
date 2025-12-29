cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.3.9"
  sha256 arm:   "9dc1eb44b17c8f7f9f7fc42c8566465fc83547aecdc3a6163e11507d4012447c",
         intel: "3826355dc7ba3907bf8f7e1dc2f93fd0a7d3ef71e6350a9a8a2e67e655d52ce5"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
