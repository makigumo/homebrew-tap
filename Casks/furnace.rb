cask "furnace" do
  arch arm: "arm64", intel: "Intel"

  version "0.6.8.3"
  sha256 arm:   "3f2a925911c5e8babaedbee891bfda669305930a024af95b83a1103e55535755",
         intel: "f901c98d96b89d68bd84e4df9e73b2e16e6566ddc75c91ec24cc1dd09300f4ae"

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
