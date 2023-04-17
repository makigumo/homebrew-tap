cask "cemu-experimental" do
  version "2.0-34"
  sha256 "44c974b2d0461980dac88cdc61c58e117e681a739d90bc7036001862b62b4827"

  url "https://github.com/cemu-project/Cemu/releases/download/v#{version}/cemu-#{version}-macos-12-x64.dmg",
      verified: "github.com/cemu-project/Cemu/"
  name "Cemu"
  desc "Wii U emulator"
  homepage "https://cemu.info/"

  app "Cemu.app"

  zap trash: [
    "~/Library/Application Support/Cemu",
    "~/Library/Caches/Cemu",
  ]
end
