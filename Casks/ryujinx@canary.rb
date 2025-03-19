cask "ryujinx@canary" do
  version "1.3.14"
  sha256 "cb87f301ab269b0ed0742595d76c9b70e5432d2f6481aaff635c20fdb1ac3dbc"

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
