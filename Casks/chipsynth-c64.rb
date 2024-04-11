cask "chipsynth-c64" do
  version "1.006"
  sha256 "8613b0466480e598b3317644ddfb446d4ab1878c0d615c2b72fa971d6e241bbe"

  url "https://s3.amazonaws.com/chipsynth/MAC_chipsynth_C64_v#{version}.dmg",
      verified: "s3.amazonaws.com/chipsynth"
  name "chipsynth-c64"
  desc "Sid synthesizer"
  homepage "https://plogue.com/products/chipsynth-c64.html"

  livecheck do
    url "https://plogue.com/downloads.html"
    regex(%r{href=.*?/MAC_chipsynth_C64_v(\d+(?:\.\d+)*)\.dmg}i)
    strategy :page_match
  end

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
