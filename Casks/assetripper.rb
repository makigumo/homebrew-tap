cask "assetripper" do
  arch arm: "arm64", intel: "x64"

  version "1.3.6"
  sha256 arm:   "ac8343a00aa7cb34c3af061b403846659551852ba642bef386ffa02121f66388",
         intel: "b665b734de2584929e2664bbac757c75770acddea6773bc656e9123632826b6e"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_mac_#{arch}.zip"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
