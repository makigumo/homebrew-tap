cask "cemu-experimental" do
  version "2.0-14"
  sha256 "189f52a876d87ef8681149d3b8973d346b50e5a7516c9e88f252805568bfd076"

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
