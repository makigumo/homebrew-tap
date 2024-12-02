cask "ryujinx" do
  version "1.2.76"
  sha256 "6a90927a6da1bdacd78c86564003513b0873955a9ee6873cb039a3ea95bdb1c6"

  url "https://github.com/GreemDev/Ryujinx/releases/download/#{version}/ryujinx-#{version}-macos_universal.app.tar.gz"
  name "Ryujinx"
  desc "Experimental Nintendo Switch Emulator written in C#"
  homepage "https://github.com/GreemDev/Ryujinx"

  app "Ryujinx.app"

  zap trash: [
    "~/Library/Preferences/Ryujinx.plist",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
