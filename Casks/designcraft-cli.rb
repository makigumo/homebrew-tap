cask "designcraft-cli" do
  version "0.18.0"
  sha256 "21680591f9c263001f41d86d21d76ddf2e644141e67bd9b5c4f0444187be36e2"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
