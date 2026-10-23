cask "vectorcraft-cli" do
  version "0.16.0"
  sha256 "f68c204642c598ab76e51a773f6aa80e3ff0ed303c78fdf4c36c4dfbad2a76f6"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
