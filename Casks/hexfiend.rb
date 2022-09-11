cask "hexfiend" do
  version "2.16.0"
  sha256 "8cee7b6d6e53cae4349a328ab12c03a062e9d9367577e9b5e7d7e5546695acb7"

  url "https://github.com/HexFiend/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version.major}.#{version.minor}.dmg",
      verified: "github.com/HexFiend/HexFiend"
  name "HexFiend"
  desc "Fast and clever hex editor"
  homepage "https://ridiculousfish.com/hexfiend/"

  app "Hex Fiend.app"

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
