cask "bindiff" do
  version "8"
  sha256 "2962fd337529a59fe4ba3b4a5596be53bfacd1bd0a3952ea7bedd6276eeb4db8"

  url "https://github.com/google/bindiff/releases/download/v#{version}/BinDiff#{version}.dmg"
  name "BinDiff"
  desc "Quickly find differences and similarities in disassembled code"
  homepage "https://zynamics.com/bindiff.html"

  pkg "Install BinDiff.pkg"

  zap trash: [
    "/Library/Application Support/BinDiff",
    "~/BinDiff Workspace",
    "~/Library/Application Support/BinDiff",
    "~/Library/Preferences/com.google.security.zynamics.bindiff.plist",
    "~/Library/Saved Application State/com.google.security.zynamics.bindiff.savedState",
  ]
end
