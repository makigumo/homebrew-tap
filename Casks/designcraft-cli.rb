cask "designcraft-cli" do
  version "0.6.0"
  sha256 "bd5c43d876e51356b42360c942d35590898fc3083f367ff33c2d7c60a207ebca"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
