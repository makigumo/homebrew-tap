cask "cemu-experimental" do
  version "2.0-10"
  sha256 "d28f15263c42e6e7c3e9dedbc744d4e84551258b8ce4261703c712236d6181e3"

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
