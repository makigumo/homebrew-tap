cask "pcsx2-nightly" do
  version "1.7.4102"
  sha256 "05313b90124de385400007d2036ef20d8316757a21a7e0fda612099b6e20d41c"

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
