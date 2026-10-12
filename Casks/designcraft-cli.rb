cask "designcraft-cli" do
  version "0.7.1"
  sha256 "bd7208a3947b185d1d889ebc1885650b13085e9df2b974e135bfca2a7175e704"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
