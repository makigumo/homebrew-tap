cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.3.7"
  sha256 arm:   "23d1698316a790225479077fbc3e4582a5a50290587477fd5d6cddcf5af56d46",
         intel: "e020178cae9f32bb7dfc73843b9f65eab06303cb24fc30d510c970e6812a020c"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
