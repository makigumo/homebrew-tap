cask "ryujinx@canary" do
  version "1.2.267"
  sha256 "f17c62a10f8bae0762f85a9f1dae97e6a81076c8f6c1d8e524812e8d3a157fa1"

  url "https://github.com/GreemDev/Ryujinx-Canary/releases/download/#{version}/ryujinx-canary-#{version}-macos_universal.app.tar.gz"
  name "Ryujinx"
  desc "Experimental Nintendo Switch Emulator written in C#"
  homepage "https://github.com/GreemDev/Ryujinx"

  app "Ryujinx.app", target: "Ryujinx Canary.app"

  zap trash: [
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
    "~/Library/Preferences/Ryujinx.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
