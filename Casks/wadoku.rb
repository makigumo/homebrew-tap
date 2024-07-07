cask "wadoku" do
  version "20240707"
  sha256 "1ec3aec148d5d769ffb35d69e0cf54e07621810baf5543b412e5fce6a239a5d1"

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
