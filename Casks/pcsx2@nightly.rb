cask "pcsx2@nightly" do
  version "2.9.40"
  sha256 "6ff12d7761ca1febb3c0e202562ecb460fdc42d2fcbeec05564e02316b236bcb"

  url "https://github.com/PCSX2/pcsx2/releases/download/v#{version}/pcsx2-v#{version}-macos-Qt.tar.xz"
  name "pcsx2-nightly"
  desc "Playstation 2 Emulator"
  homepage "https://pcsx2.net/"

  depends_on macos: :big_sur

  app "PCSX2-v#{version}.app"

  uninstall quit: "net.pcsx2.pcsx2"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
    "~/Library/Saved Application State/net.pcsx2.pcsx2.savedState",
  ]
end
