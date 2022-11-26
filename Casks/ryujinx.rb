cask "ryujinx" do
  version "1.1.0-macos1"
  sha256 "2ab00be8ae763cb8e0e9f0c3746609c16e74a36e4d95bbe72a0b0de2862942fd"

  url "https://github.com/Ryujinx/release-channel-macos/releases/download/#{version}/Ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "https://github.com/Ryujinx/release-channel-macos"
  name "Ryujinx"
  desc "Experimental Nintendo Switch Emulator written in C#"
  homepage "https://www.ryujinx.org/"

  app "Ryujinx.app"

  zap trash: [
    "~/Library/Preferences/Ryujinx.plist",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
