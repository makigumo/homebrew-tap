cask "furnace" do
  arch arm: "arm64", intel: "Intel"

  version "0.6"
  sha256 arm:   "f310d9c75611037ea9a0910c24d4b06e9f8fd25777ece53ed655b2b1deb4390c",
         intel: "8ad80ae355e58a7cf9ba2ac6786f28c137f73d82c927752b2557b7d769754078"

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
