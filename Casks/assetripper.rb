cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.3.14"
  sha256 arm:   "680890b97c58be02075438814b3f41ec2a928ae0be8e94fa24ad51faa81078aa",
         intel: "9948a69fa9056b98bf6294c0e13814feaafcb77687231473bcc4448b2dcc4f51"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
