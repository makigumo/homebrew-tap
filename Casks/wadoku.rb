cask "wadoku" do
  version "20250105"
  sha256 "64060a587ed1c33580b5a384be4818892a1feff5ffbf98b08954e4bf92cf008c"

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
