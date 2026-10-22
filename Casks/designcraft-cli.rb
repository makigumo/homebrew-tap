cask "designcraft-cli" do
  version "0.12.0"
  sha256 "3a8ebebf03ded56a5b5128f80ec7859351adad94fd8964fd7991acf648a0cd7c"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
