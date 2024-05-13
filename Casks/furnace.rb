cask "furnace" do
  arch arm: "arm64", intel: "Intel"

  version "0.6.3"
  sha256 arm:   "284d9d4efc4e7f0d1c41cc4f1b9c056767e2064a8961e1104bc2f1bd83fb8b7f",
         intel: "9e2f38bd6be06f8f2ff4da8113cbe325368d6fe9031289ed1b1b47004ef3bcf1"

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
