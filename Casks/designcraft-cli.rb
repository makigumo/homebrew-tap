cask "designcraft-cli" do
  version "0.11.0"
  sha256 "f70cde1d39cfa8307db7aa036d5fce66a509e47d4059d984b93b0a4ce26b974d"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
