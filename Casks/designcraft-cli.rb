cask "designcraft-cli" do
  version "0.8.0"
  sha256 "e663f967d9e1c439e0eb7759147be29121da198cdd71cedd4afb3ae0e0336243"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
