cask "vectorcraft-cli" do
  version "0.17.0"
  sha256 "dee6d447c42615662ea81a612fedd0c221b14ac51dbe72e45f3d435fdc511641"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
