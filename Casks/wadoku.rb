cask "wadoku" do
  version "20230702"
  sha256 "d2efcc5f6005ac4b15fd9b96045053a1cb03fa3735d6f6d36abb34db996901b8"

  url "https://www.wadoku.de/downloads/mac/Wadoku#{version}.dictionary.dmg",
      verified: "wadoku.de/downloads/mac/"
  name "Wadoku for macOS/iOS"
  desc "Japanese-German dictionary"
  homepage "https://github.com/makigumo/wadoku-mac-dic"

  livecheck do
    url "https://www.wadoku.de/downloads/mac/"
    regex(/Wadoku(\d{8}).dictionary/i)
  end

  dictionary "Wadoku.dictionary"
end
