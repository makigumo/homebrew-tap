cask "hexfiend" do
  version "2.18.0b3"
  sha256 "8266bf4b846c29cd6262d76ec961e584c77418f267640f540462d0a47c42224b"

  url "https://github.com/HexFiend/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version.major}.#{version.minor}.dmg",
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
