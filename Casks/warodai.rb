cask "warodai" do
  version "20250813"
  sha256 "4ed9bd7dffae2b5dd4fa757dc6bd59e216e50a275efac03bbfb84e6607d887a4"

  url "https://github.com/makigumo/warodai-mac-dic/releases/download/#{version}/Warodai.dmg"
  name "Warodai for Mac"
  homepage "https://github.com/makigumo/warodai-mac-dic"

  dictionary "Warodai.dictionary"
end
