cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.2.4"
  sha256 arm:   "c5dc8973ca7896d0df501faa757f4ab259985ef2e55323af0cad4ca0d38df6e0",
         intel: "36d1ce6126e507621e51991697534d853a3d81b5f37a8877fab782cd8a309575"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
