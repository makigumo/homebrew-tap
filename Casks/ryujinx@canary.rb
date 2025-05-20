cask "ryujinx@canary" do
  version "1.3.47"
  sha256 "f5f6da0eac6e5f9e1c87b48ef2f0333761b21fe7ed12b95a171c055aad200c10"

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
