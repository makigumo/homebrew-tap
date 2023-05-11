cask "ryujinx-master" do
  version "1.1.787"
  sha256 "ca43dcb2b84e00f9b22ef5317548e15821fe2de3ecf7caa8d60755082dddb17e"

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
