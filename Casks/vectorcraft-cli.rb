cask "vectorcraft-cli" do
  version "0.9.0"
  sha256 "0e6fc38dd1ec432fb4a133ee1b1efe935d739f0fcb376b1925ee89473d55a61b"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
