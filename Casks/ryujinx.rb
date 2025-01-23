cask "ryujinx" do
  version "1.2.81"
  sha256 "ad444ebe3cd03ee1cda30723f7f8d16e4319f6c2374e9d2f9ad8f19adf04a724"

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
