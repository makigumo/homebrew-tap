cask "warodai" do
  version "20250722"
  sha256 "7e4424d9c78af81387368b9273c4efc0498cb544f0cee5cb8b3b2c54935e3323"

  url "https://github.com/makigumo/warodai-mac-dic/releases/download/#{version}/Warodai.dmg"
  name "Warodai for Mac"
  homepage "https://github.com/makigumo/warodai-mac-dic"

  dictionary "Warodai.dictionary"
end
