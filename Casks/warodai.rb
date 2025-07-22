cask "warodai" do
  version "20250722"
  sha256 "078e5de568b96da6d5360bc35c69fc1c196e2100d4105ca3aa7334f14d7ddbb8"

  url "https://github.com/makigumo/warodai-mac-dic/releases/download/#{version}/Warodai.dmg"
  name "Warodai for Mac"
  homepage "https://github.com/makigumo/warodai-mac-dic"

  dictionary "Warodai.dictionary"
end
