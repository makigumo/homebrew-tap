cask "pcsx2-nightly" do
  version "1.7.3411"
  sha256 "5bf7ac44be934131d1338ec3063671fdf0e30157c24312b19013ddc2c3961a1c"

  url "https://github.com/PCSX2/pcsx2/releases/download/v#{version}/pcsx2-v#{version}-macos-Qt.tar.gz",
      verified: "github.com/PCSX2/pcsx2"
  name "pcsx2-nightly"
  desc "Playstation 2 Emulator"
  homepage "https://pcsx2.net/"

  app "PCSX2.app"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
    "~/Library/Saved Application State/net.pcsx2.pcsx2.savedState",
  ]
end
