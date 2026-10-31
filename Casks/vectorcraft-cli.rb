cask "vectorcraft-cli" do
  version "0.19.0"
  sha256 "939bc7ccf225852a941375f45951ca3ad7645cfb3d6d3d75007e68b4c7dd7169"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
