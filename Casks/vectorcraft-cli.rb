cask "vectorcraft-cli" do
  version "0.20.0"
  sha256 "c840d5b6b278b50f938bfced99e121aaa76e2065c84fdb377182126e5df3f33f"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
