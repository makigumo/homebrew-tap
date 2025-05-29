cask "ryujinx@canary" do
  version "1.3.58"
  sha256 "f84e495298508bbb72b5e37b9f785fb35f54c2d9726dde03dbe3b0d917dd6f04"

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
