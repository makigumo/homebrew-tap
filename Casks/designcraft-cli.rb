cask "designcraft-cli" do
  version "0.5.0"
  sha256 "5b9fc80fed580ea0d842cad757d926e8576c8311ca6fb4deb8f791659c823798"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
