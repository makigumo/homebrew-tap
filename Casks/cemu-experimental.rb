cask "cemu-experimental" do
  version "2.0-9"
  sha256 "0d5c927a0fdd1e4fb81ea97958d94d5ed3e4a76ec944df1c7845e918af370cc3"

  url "https://github.com/cemu-project/Cemu/releases/download/v#{version}/cemu-#{version}-macos-12-x64.dmg",
      verified: "github.com/cemu-project/Cemu"
  name "Cemu"
  desc "Wii U emulator"
  homepage "https://cemu.info/"

  app "Cemu.app"

  zap trash: [
    "~/Library/Application Support/Cemu",
    "~/Library/Caches/Cemu",
  ]
end
