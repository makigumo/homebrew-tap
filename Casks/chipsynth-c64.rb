cask "chipsynth-c64" do
  version "1.132"
  sha256 "de7213a50d61412b2ec9862abc2f7accbd383b802175c39c2507ce0db335eec4"

  url "https://s3.amazonaws.com/chipsynth/MAC_chipsynth_C64_v#{version}.dmg"
  name "chipsynth-c64"
  desc "Sid synthesizer"
  homepage "https://plogue.com/products/chipsynth-c64.html"

  livecheck do
    url "https://plogue.com/downloads.html",
        user_agent: :browser
    regex(%r{href=.*?/MAC_chipsynth_C64_v(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on :macos

  pkg "MAC_chipsynth_C64_v#{version}.pkg"

  uninstall pkgutil: [
    "com.plogue.chipsynth.C64.CLAP.pkg",
    "com.plogue.chipsynth.C64.plugins.pkg",
    "com.plogue.chipsynth.C64.SA.pkg",
    "com.plogue.chipsynth.C64.VST3.pkg",
    "com.Plogue.FermataMainpck",
  ]

  zap trash: [
    "/Library/Preferences/com.native-instruments.Plogue-chipsynth C64.plist",
    "/Library/Preferences/com.Plogue Art et Technologie, Inc.chipsynth C64.plist",
    "/Library/Preferences/com.Plogue Art et Technologie, Inc.chipsynth C64SA.plist",
    "~/Library/Preferences/com.Plogue Art et Technologie, Inc.chipsynth C64.plist",
    "~/Library/Preferences/com.Plogue Art et Technologie, Inc.chipsynth C64SA.plist",
    "~/Library/Preferences/com.plogue.chipsynth C64.plist",
    "~/Library/Saved Application State/com.plogue.chipsynth C64.savedState",
  ]
end
