cask "wadoku" do
  version "20260104"
  sha256 "de53e89034134e21be4da255b15535a4155a9ec3c5268c6b02436bf591a9f44f"

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
