cask "furnace" do
  arch arm: "arm64", intel: "Intel"

  version "0.6.7"
  sha256 arm:   "d56fdf89d4b36dab771adda25d044841785c9debbd8bf87f5f2d09ea0da0db2f",
         intel: "9db4ba4cc88528f30036a4be05609b0640e170c9eca0b7b02d929165a94137e9"

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
