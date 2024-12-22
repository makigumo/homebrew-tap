cask "ryujinx" do
  version "1.2.78"
  sha256 "7ede71b85925a8db38a27767d997d2d62a0a057b43d05e172b951ae439d8bb47"

  url "https://github.com/GreemDev/Ryujinx/releases/download/#{version}/ryujinx-#{version}-macos_universal.app.tar.gz"
  name "Ryujinx"
  desc "Experimental Nintendo Switch Emulator written in C#"
  homepage "https://github.com/GreemDev/Ryujinx"

  app "Ryujinx.app", target: "Ryujinx GreemDev.app"

  zap trash: [
    "~/Library/Preferences/Ryujinx.plist",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
