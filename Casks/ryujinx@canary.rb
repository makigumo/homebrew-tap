cask "ryujinx@canary" do
  version "1.3.51"
  sha256 "24b3b675913ddfcea935a919cb5b7c82387f1268bfc6c455865ba1c71a1b6b14"

  url "https://github.com/GreemDev/Ryujinx-Canary/releases/download/#{version}/ryujinx-canary-#{version}-macos_universal.app.tar.gz",
      verified: "github.com/GreemDev/Ryujinx-Canary/"
  name "Ryujinx"
  desc "Experimental Nintendo Switch Emulator written in C#"
  homepage "https://ryujinx.app/"

  app "Ryujinx.app", target: "Ryujinx Canary.app"

  zap trash: [
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
    "~/Library/Preferences/Ryujinx.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
