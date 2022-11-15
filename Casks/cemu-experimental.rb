cask "cemu-experimental" do
  version "2.0-16"
  sha256 "bf4913c3a174f87ca4e5a331dab16ea5fd6663e63ef98ad8ceb28c0517fa09e8"

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
