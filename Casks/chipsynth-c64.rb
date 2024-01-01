cask "chipsynth-c64" do
  version "1.004"
  sha256 "87bde32e6b9e1498f14bd5929557223646424dced676c5d4939bccfc3c872035"

  url "https://s3.amazonaws.com/chipsynth/MAC_chipsynth_C64_v#{version}.dmg"
  name "chipsynth-c64"
  desc "sid synthesizer"
  homepage "https://plogue.com/products/chipsynth-c64.html"

  livecheck do
    url "https://plogue.com/downloads.html"
    regex(%r{href=.*?/MAC_chipsynth_C64_v(\d+(?:\.\d+)*)\.dmg}i)
    strategy :page_match
  end

  pkg "MAC_chipsynth_C64_v#{version}.pkg"

  uninstall pkgutil:

  zap trash: [
    "/Library/Preferences/com.Plogue Art et Technologie, Inc.chipsynth C64.plist",
    "/Library/Preferences/com.Plogue Art et Technologie, Inc.chipsynth C64SA.plist",
    "/Library/Preferences/com.native-instruments.Plogue-chipsynth C64.plist",
    "~/Library/Preferences/com.Plogue Art et Technologie, Inc.chipsynth C64.plist",
    "~/Library/Preferences/com.Plogue Art et Technologie, Inc.chipsynth C64SA.plist",
    "~/Library/Preferences/com.plogue.chipsynth C64.plist",
    "~/Library/Saved Application State/com.plogue.chipsynth C64.savedState",
  ]
end
