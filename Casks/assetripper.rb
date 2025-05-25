cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.2.3"
  sha256 arm:   "735be693226cc1cc0faef5793a66c17b7aba69b6faf3f1d7e1f82553292a43a9",
         intel: "a824b69040c0f22c0356576866ad49fd7443a7d112e4361c219a47049f90ac69"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
