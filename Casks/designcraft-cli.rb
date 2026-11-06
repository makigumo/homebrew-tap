cask "designcraft-cli" do
  version "0.17.2"
  sha256 "3d3b0ad3cda23344dbfba5f08a46dbfc81a02477dc644ca2b1266dee23198372"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
