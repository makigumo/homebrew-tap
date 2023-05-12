cask "ryujinx-master" do
  version "1.1.792"
  sha256 "fa73f19bb3255e1f40f651181a6251e33c43d28772556df3a12ed6fb54177ff4"

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
