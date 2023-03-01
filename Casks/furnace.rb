cask "furnace" do
  arch arm: "M1", intel: "Intel"

  version "0.6pre4-hotfix"
  sha256 arm:   "f9c01c4f4fa658619a5efcdd6647769d17e66acc6b4b5c0a8aa3418e2edf9472",
         intel: "5fb135bd7d77dfcf155cfc84f65e8758b6c6566b676d7d2053de3938b814de1f"

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
