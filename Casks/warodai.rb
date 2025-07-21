cask "warodai" do
  version "20250721"
  sha256 "86a227dd035223be8a9b8df54672d4edfcb80f10f12fba6bd30e96a39b86f8c1"

  url "https://github.com/makigumo/warodai-mac-dic/releases/download/#{version}/Warodai.dmg"
  name "Warodai for Mac"
  homepage "https://github.com/makigumo/warodai-mac-dic"

  dictionary "Warodai.dictionary"
end
