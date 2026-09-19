cask "pcsx2@nightly" do
  version "2.9.66"
  sha256 "bbb9943eb374d9e5836ff8380801c235ec5aa41959272ad5af29f3e7f241977c"

  url "https://github.com/PCSX2/pcsx2/releases/download/v#{version}/pcsx2-v#{version}-macos-Qt.tar.xz"
  name "pcsx2-nightly"
  desc "Playstation 2 Emulator"
  homepage "https://pcsx2.net/"

  depends_on :macos

  app "PCSX2-v#{version}.app"

  uninstall quit: "net.pcsx2.pcsx2"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
    "~/Library/Saved Application State/net.pcsx2.pcsx2.savedState",
  ]
end
