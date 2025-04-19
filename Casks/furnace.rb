cask "furnace" do
  arch arm: "arm64", intel: "Intel"

  version "0.6.8.1"
  sha256 arm:   "f36caeec8f2530a3a172b4bce6e5d2fe6b6211f073916e90d5e3ef61f781f530",
         intel: "36bc0be8d845eb77ca1e1e9047e0e902066d4e150cd8df98f31ee79d80a70321"

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
