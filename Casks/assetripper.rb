cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "1e72aaab45ac4df3a9b20bff82943fd556c761d4141a61a604efc3835e705cf9",
         intel: "320fb2a44d7109cf7cbf0109abbf27dc175809b04b94e3fb2241ab0f270bb44b"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
