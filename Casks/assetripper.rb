cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "94f4a7641c6b3f586603730b32465f89f84752171e772698141f54e065277da5",
         intel: "541faa65f3ed5fc6d6fb1d1e2f3ff6bfbbcf4b79d8ac9c72c60967f2747455eb"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
