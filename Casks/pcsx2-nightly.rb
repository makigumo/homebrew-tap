cask "pcsx2-nightly" do
  version "1.7.4837"
  sha256 "e6710661951e411d634a1bb4bddd0ab95921d25b2055e0d05eb313ca91959944"

  url "https://github.com/PCSX2/pcsx2/releases/download/v#{version}/pcsx2-v#{version}-macos-Qt.tar.xz",
      verified: "github.com/PCSX2/pcsx2/"
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
