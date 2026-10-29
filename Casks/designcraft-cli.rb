cask "designcraft-cli" do
  version "0.14.0"
  sha256 "6e35a9e2661349b32f1e3f76bc0f98deb22d2fe71d82ae15105451e4f50bc78b"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
