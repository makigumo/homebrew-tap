cask "wadoku" do
  version "20240107"
  sha256 "8c43c3f5a79bf029f355ad6ffc1dd429975813ec98a64efb250f66f7ffe0a20d"

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
