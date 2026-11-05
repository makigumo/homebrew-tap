cask "vectorcraft-cli" do
  version "0.21.0"
  sha256 "1c645c749759654223136f9a4c0c6ea73867e79a3969b17844e3cdabaec07429"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
