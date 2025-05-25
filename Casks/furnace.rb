cask "furnace" do
  arch arm: "arm64", intel: "Intel"

  version "0.6.8.2"
  sha256 arm:   "ce92301c9b1e24fffee40825a9c525f732f0728b04b8825a426fdff3fdd6ad57",
         intel: "8e69c72745b4b01856688af75020079a5ac8350b6757745bd0a4f586884f9f1d"

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
