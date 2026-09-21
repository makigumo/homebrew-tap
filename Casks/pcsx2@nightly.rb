cask "pcsx2@nightly" do
  version "2.9.78"
  sha256 "a05392c7524c99498a3f4f7deac961c06325e976f0aa1754c5508b2b4eee0dbe"

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
