cask "furnace" do
  arch arm: "arm64", intel: "Intel"

  version "0.6.2"
  sha256 arm:   "db64a062c40f257c8c6ede792b2fddc4cc3b43b21d8367877cee5574f1b929e2",
         intel: "899f9ec2511efb231bf8b5cb3f690cce58891a7826dd6e12120a564dec272b77"

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
