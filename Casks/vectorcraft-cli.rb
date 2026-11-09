cask "vectorcraft-cli" do
  version "0.23.0"
  sha256 "beab784c2971caa7fd5ab48058e2af69c3c8bf76ef8abfb78e36bdf5b76dee20"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
