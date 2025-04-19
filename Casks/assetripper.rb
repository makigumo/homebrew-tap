cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "4b8e4758ff32c9e39c4ce6c4e0177c83aa02f54ac73291938c17807b4454e40f",
         intel: "716d3672e4672230dd42b84e01e8d69f5d5a518ee0cb3a4217fab1dd5fbc5efe"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
