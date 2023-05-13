cask "ryujinx-master" do
  version "1.1.799"
  sha256 "8dcf3137fca7f2d5a21b88dd25112deaa7a8033103b3cb1159682f702f40cf5b"

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
