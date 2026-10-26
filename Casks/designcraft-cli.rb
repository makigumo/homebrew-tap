cask "designcraft-cli" do
  version "0.13.0"
  sha256 "ba49dc1699ed98f27ef8e9336a24a011f086f3d1a46c6f069c2791bf796de960"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
