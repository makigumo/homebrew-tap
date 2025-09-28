cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.3.4"
  sha256 arm:   "ad1da5064aa048ad7458b6a48f96c4feec4bc1c68069801935b633e637331ee1",
         intel: "4147fe8323d73cb3767bc06b3eda40c954596c3f18f887beb1b831f50ee39c90"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
