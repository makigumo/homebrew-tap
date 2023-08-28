cask "furnace" do
  arch arm: "arm64", intel: "Intel"

  version "0.6pre9"
  sha256 arm:   "5bf21eda55e4c96595b7a93f8936df0f06d15e284a4435fccad8f87e1298580a",
         intel: "1945dd99f9a3416e7cd6ce1d72d9f8b549f3e5801a38a534e76522f6dd696a3b"

  url "https://github.com/tildearrow/furnace/releases/download/v#{version}/furnace-#{version}-mac-#{arch}.dmg"
  name "furnace"
  desc "Multi-system chiptune tracker"
  homepage "https://github.com/tildearrow/furnace"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:pre\d+)?)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  app "Furnace.app"

  zap trash: [
    "~/Library/Application Support/Furnace",
    "~/Library/Saved Application State/org.tildearrow.furnace.savedState",
  ]
end
