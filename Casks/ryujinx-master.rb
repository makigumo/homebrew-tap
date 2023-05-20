cask "ryujinx-master" do
  version "1.1.810"
  sha256 "615eeeb34fc7cee8dae1812a23f9676e2f01aa7bb2f44ec95dd3710da11652d7"

  url "https://github.com/Ryujinx/release-channel-master/releases/download/#{version}/test-ava-ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "github.com/Ryujinx/release-channel-master/"
  name "Ryujinx"
  desc "Experimental Nintendo Switch Emulator written in C#"
  homepage "https://www.ryujinx.org/"

  app "Ryujinx.app", target: "Ryujinx master.app"

  zap trash: [
    "~/Library/Preferences/Ryujinx.plist",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
