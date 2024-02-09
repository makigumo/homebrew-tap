cask "pcsx2-nightly" do
  version "1.7.5551"
  sha256 "2cc690a0313a21860437044767504687eae0dcc60f1a21f2dcf95ff2c7f4dd2e"

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
