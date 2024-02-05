cask "furnace" do
  arch arm: "arm64", intel: "Intel"

  version "0.6.1"
  sha256 arm:   "6f108b4ce90598a3004178e70749253f19192da5dfa33d39a67a9c97562c32ca",
         intel: "53a66ceb30bda1d0be90fafb0ed05eb1195115effc5e19f8e8469a91a8957398"

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
