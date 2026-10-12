cask "vectorcraft-cli" do
  version "0.10.0"
  sha256 "0744d0d606747eaf521e6529d02477f07ca6d04fb64c7c03247aab0dd4c19968"

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-cli-#{version}-macos-universal.zip"
  name "vectorcraft-cli"
  desc "Vector editor, headless cli"
  homepage "https://github.com/storytold/vectorcraft"

  binary "vectorcraft-cli-#{version}-macos-universal/vectorcraft-cli"

  zap trash: ""
end
