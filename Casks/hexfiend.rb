cask "hexfiend" do
  version "2.17.0b3"
  sha256 "0284db3763b5a4bd0a29be7bee0dfd7f6f855d4936a1310830f2fe46c9e86d4b"

  url "https://github.com/HexFiend/HexFiend/releases/download/#{version}/Hex_Fiend_#{version.major}.#{version.minor}.dmg",
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
