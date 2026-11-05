cask "designcraft-cli" do
  version "0.17.1"
  sha256 "07f724d6391f1438cb2d6244e33217a63328a4e71654ccc4257ac79e3a477307"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
