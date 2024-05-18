cask "pcsx2-nightly" do
  version "1.7.5818"
  sha256 "32ee55868b8f48d2b4b4d1fd3f443b1b53865c20e1bc7e010833b1b39f1b71b6"

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
