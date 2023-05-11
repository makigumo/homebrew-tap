cask "cemu-experimental" do
  version "2.0-38"
  sha256 "e55383cf2abe7b33bed882fb5c67d7ab91f6eac214e6b4d06146defcaeab35f0"

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
