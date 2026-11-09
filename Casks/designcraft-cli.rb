cask "designcraft-cli" do
  version "0.19.0"
  sha256 "30245ba54b026437dc5563a3ad483c1217b7ccbe19871dc7261187311d3b7b74"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
