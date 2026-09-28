cask "chipsynth-c64" do
  version "1.131"
  sha256 "32861529d2d044ebcc899a1e4ef939ed52f7b592a0baa0e657109c08222e479c"

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
