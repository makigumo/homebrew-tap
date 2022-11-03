cask "cemu-experimental" do
  version "2.0-12"
  sha256 "b7b91c4c401fef9f6031d5c212731c6f8d781df7cfbd18f6bff8fa5e0977ac9d"

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
