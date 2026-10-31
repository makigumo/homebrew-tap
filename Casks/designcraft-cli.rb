cask "designcraft-cli" do
  version "0.15.2"
  sha256 "e8b9c5e960876a424c66b9981ede24efe06854353d2dd475cd61ef7bf0d6e648"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
