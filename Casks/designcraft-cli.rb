cask "designcraft-cli" do
  version "0.9.0"
  sha256 "1c11a863755b9eb38209c8521bd46c42888260179f016a125b3ba5d293c0cb84"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
