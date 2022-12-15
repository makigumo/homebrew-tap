cask "cemu-experimental" do
  version "2.0-22"
  sha256 "6a2e8c97a3a26209504097a9a6cb343182c86a666fd85609d81ff84bd8d2b9e5"

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
