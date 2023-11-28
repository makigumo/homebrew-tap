cask "hexfiend" do
  version "2.17.1"
  sha256 "4291a6a710e9752fac26db0db69d1548077d5895da6622931f8c83b032bc1529"

  url "https://github.com/HexFiend/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version}.dmg",
      verified: "github.com/HexFiend/HexFiend/"
  name "HexFiend"
  desc "Fast and clever hex editor"
  homepage "https://ridiculousfish.com/hexfiend/"

  app "Hex Fiend.app"
  binary "#{appdir}/Hex Fiend.app/Contents/Resources/hexf"

  zap trash: [
    "~/Library/Application Support/com.ridiculousfish.HexFiend",
    "~/Library/Cookies/com.ridiculousfish.HexFiend.binarycookies",
    "~/Library/HTTPStorages/com.ridiculousfish.HexFiend",
    "~/Library/HTTPStorages/com.ridiculousfish.HexFiend.binarycookies",
    "~/Library/Preferences/com.ridiculousfish.HexFiend.LSSharedFileList.plist",
    "~/Library/Preferences/com.ridiculousfish.HexFiend.plist",
    "~/Library/Saved Application State/com.ridiculousfish.HexFiend.savedState",
    "~/Library/WebKit/com.ridiculousfish.HexFiend",
  ]
end
