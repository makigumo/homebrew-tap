cask "vectorcraft-cli" do
  version "0.21.1"
  sha256 "1812e57498785d39485865d8fc7d9f6990f313217a2411c3d303ad17fe6e9181"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
