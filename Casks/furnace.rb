cask "furnace" do
  arch arm: "M1", intel: "Intel"

  version "0.6pre1.5"
  sha256 arm:   "70ca8ea9b55e2aa971afd35e79fe7454acda5b0cfdc7474fca69ab78da8239dc",
         intel: "49fb7d87fc30e053c06c2196f325545827a60a8ffb0a5c766bb300e0f041a0d1"

  url "https://github.com/tildearrow/furnace/releases/download/v#{version}/furnace-#{version}-mac-#{arch}.dmg"
  name "furnace"
  desc "Multi-system chiptune tracker"
  homepage "https://github.com/tildearrow/furnace"

  livecheck do
    url :url
    regex(%r{/releases/tag/v(.+?)"}i)
    strategy :github_latest do |page, regex|
      match = page.match(regex)
      next if match.blank?

      (match[1]).to_s
    end
  end

  app "Furnace.app"

  zap trash: [
    "~/Library/Application Support/Furnace",
    "~/Library/Saved Application State/org.tildearrow.furnace.savedState",
  ]
end
