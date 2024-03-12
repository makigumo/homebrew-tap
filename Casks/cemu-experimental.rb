cask "cemu-experimental" do
  version "2.0-71"
  sha256 "19e2461160632afd34f9d4b4c7c70a5921b695a4c7087fe69a2be480ab7f0e79"

  url "https://github.com/cemu-project/Cemu/releases/download/v#{version}/cemu-#{version}-macos-12-x64.dmg",
      verified: "github.com/cemu-project/Cemu/"
  name "Cemu"
  desc "Wii U emulator"
  homepage "https://cemu.info/"

  app "Cemu.app"

  zap trash: [
    "~/Library/Application Support/Cemu",
    "~/Library/Caches/Cemu",
    "~/Library/Preferences/info.cemu.Cemu.plist",
  ]
end
