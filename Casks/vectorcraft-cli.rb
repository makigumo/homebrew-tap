cask "vectorcraft-cli" do
  version "0.14.0"
  sha256 "d28e64b1276e844a77a3a37a5f4102d348cd12234929fbef0eedcf72fd94da58"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
