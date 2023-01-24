cask "pcsx2-nightly" do
  version "1.7.3950"
  sha256 "d0f46b4118c6973762da9653b87e9db3d6e4f92338c3625dcf28a1edecc77cb1"

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
