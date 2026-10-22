cask "vectorcraft-cli" do
  version "0.15.0"
  sha256 "9967677bc3469aabe12b73c60c3580a9ebf8df428b001ff1199a2d18bd41ea80"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
