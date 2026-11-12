cask "vectorcraft-cli" do
  version "0.24.1"
  sha256 "7f0c8261e5c831d9681e48272f9ba73bf8702dbf6ceb84f98177c7c007faddf2"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
