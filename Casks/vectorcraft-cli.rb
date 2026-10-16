cask "vectorcraft-cli" do
  version "0.12.0"
  sha256 "29d97dd6cbef0457824bc54202620d9589adb65bfe5e13459866531747dec5df"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
