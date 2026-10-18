cask "vectorcraft-cli" do
  version "0.13.1"
  sha256 "fc2c1f0163a7de37904556ee1c56d726d9ee738accd3c9dfc2f913d6ae2459fc"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
