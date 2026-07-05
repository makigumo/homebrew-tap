cask "pcsx2@nightly" do
  version "2.7.451"
  sha256 "3bb0c1a24627a20cd90209cb84b3ef6d13bb65f8ba7369f3f9ca25f4f7a49a78"

  url "https://github.com/PCSX2/pcsx2/releases/download/v#{version}/pcsx2-v#{version}-macos-Qt.tar.xz",
      verified: "github.com/PCSX2/pcsx2/"
  name "pcsx2-nightly"
  desc "Playstation 2 Emulator"
  homepage "https://pcsx2.net/"

  depends_on macos: :big_sur

  app "PCSX2-v#{version}.app"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
    "~/Library/Saved Application State/net.pcsx2.pcsx2.savedState",
  ]
end
