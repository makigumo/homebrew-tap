cask "designcraft-cli" do
  version "0.16.0"
  sha256 "9985ca3ceda27bd4c59b28121fcd99e33fef088380059f69f3e7e7409ff24f1a"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-cli-#{version}-macos-universal.zip"
  name "designcraft-cli"
  desc "Page layout and publishing, headless cli"
  homepage "https://getartcraft.com/apps/designcraft"

  binary "designcraft-cli-#{version}-macos-universal/designcraft-cli"

  zap trash: ""
end
