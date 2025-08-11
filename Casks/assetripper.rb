cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.3.2"
  sha256 arm:   "b03fa7ca7cc8ee2730dfc29df1e7bc6148ed3253c36b906d437552563c46160a",
         intel: "d62d0d3a53ae6ccef943169c58d050c6fb39a86e01b8ff49ad44ef81a14a0a69"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
