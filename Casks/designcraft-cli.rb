cask "designcraft-cli" do
  version "0.21.1"
  sha256 "8148a42e293ba9a83351568ad938410b8868495952679648f7018ad5cd245cf3"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
