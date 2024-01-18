cask "ryujinx-master" do
  version "1.1.1114"
  sha256 "0f3d06db6c5d8485cbd415f5918a66e5028e7ebbb842b6f960d8de6dab012adc"

  url "https://github.com/Ryujinx/release-channel-master/releases/download/#{version}/test-ava-ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "github.com/Ryujinx/release-channel-master/"
  name "Ryujinx"
  desc "Experimental Nintendo Switch Emulator written in C#"
  homepage "https://www.ryujinx.org/"

  app "Ryujinx.app", target: "Ryujinx master.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Ryujinx_*.plist",
    "~/Library/Preferences/Ryujinx.Ava.plist",
    "~/Library/Preferences/Ryujinx.plist",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
