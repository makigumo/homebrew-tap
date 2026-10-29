cask "vectorcraft-cli" do
  version "0.18.0"
  sha256 "694d216cc0ac8ff32dc1c32ffa318da9e5229d58bc821e378eef6f3739286744"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
