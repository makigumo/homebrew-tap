cask "pcsx2@nightly" do
  version "2.9.65"
  sha256 "5a40627ba4d3aff945b0a2cf983d20f484a944f8835f34401090f24ca6f20a76"

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
