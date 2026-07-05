cask "wadoku" do
  version "20260705"
  sha256 "bafcf77779f884190b501fc1622d0183bc57d598911a0ee18c3d68f4e673b6cf"

  url "https://www.wadoku.de/downloads/mac/Wadoku#{version}.dictionary.dmg",
      verified: "wadoku.de/downloads/mac/"
  name "Wadoku for macOS/iOS"
  desc "Japanese-German dictionary"
  homepage "https://github.com/makigumo/wadoku-mac-dic"

  livecheck do
    url "https://www.wadoku.de/downloads/mac/"
    regex(/Wadoku(\d{8}).dictionary/i)
  end

  depends_on :macos

  dictionary "Wadoku.dictionary"
end
