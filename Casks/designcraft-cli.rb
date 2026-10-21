cask "designcraft-cli" do
  version "0.10.0"
  sha256 "0a88351d7f82f71f8c11e1c3464a1225ad9cd48554191a6411b93e723ff0285e"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
