cask "vectorcraft-cli" do
  version "0.11.0"
  sha256 "e8044f9f14a29b81d9563bd0b90cb655a9d7511b0f4a2e4e0c1e23ad552032af"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
