cask "ryujinx-master" do
  version "1.1.784"
  sha256 "5830c2946e37a0531b87966c6f38d3199b8d31c9f3ab8c2713ee03c0506e1681"

  url "https://github.com/Ryujinx/release-channel-master/releases/download/#{version}/Ryujinx-#{version}-macos_universal.app.tar.gz",
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
