cask "furnace" do
  arch arm: "arm64", intel: "Intel"

  version "0.6pre11"
  sha256 arm:   "36724e3ae9d3b683070d8105343955ea085974fab83048337f2f12a880051467",
         intel: "0aee88150998d114fc9cb77a5071a51e85760e49f53d033db66b1032a3bf57a7"

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
