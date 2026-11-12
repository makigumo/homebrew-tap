cask "designcraft-cli" do
  version "0.20.1"
  sha256 "a178783b31e1af48f7af2b516568ec85537a484dfbcc5057b0f03cadee90c0ab"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
