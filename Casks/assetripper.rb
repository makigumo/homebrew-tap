cask "assetripper" do
  arch arm:   on_system_conditional(macos: "mac_arm64", linux: "mac_x64"),
       intel: on_system_conditional(macos: "mac_arm64", linux: "linux_x64")

  version "2.0.0"
  sha256 arm:          "237a6da404bf089c5e5c71a5a9a698c2ea580872292dfa5ce21e25fd1dbe9045",
         intel:        "237a6da404bf089c5e5c71a5a9a698c2ea580872292dfa5ce21e25fd1dbe9045",
         arm64_linux:  "1b3836f135d16845cb57595fadff5739cbb86d28caaf621005b4301dba9b5a56",
         x86_64_linux: "6f5d4352d36795b944243eb3ec790ec37dbca6d6756e52605bc8616e042d384e"

  url "https://github.com/AssetRipper/AssetRipper/releases/download/#{version}/AssetRipper_#{arch}.tar.xz"
  name "AssetRipper"
  desc "GUI Application to work with engine assets, asset bundles, and serialized files"
  homepage "https://github.com/AssetRipper/AssetRipper"

  binary "AssetRipper.GUI.Free", target: "assetripper"

  zap trash: ""
end
