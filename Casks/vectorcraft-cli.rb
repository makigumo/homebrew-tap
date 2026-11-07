cask "vectorcraft-cli" do
  version "0.22.0"
  sha256 "190256852e87d06dc98456323a3f614b3d3a4708cfd94148614d4c92f5085fa3"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
