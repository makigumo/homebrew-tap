cask "warodai" do
  version "20250105"
  sha256 "01229a8e84d24d727459b886c622da9bf23ce5daa1e1d4cbbe9d500cf782c79e"

  url "https://github.com/makigumo/warodai-mac-dic/releases/download/#{version}/Warodai.dmg"
  name "Warodai for Mac"
  homepage "https://github.com/makigumo/warodai-mac-dic"

  dictionary "Warodai.dictionary"
end
