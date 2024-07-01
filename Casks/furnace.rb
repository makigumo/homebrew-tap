cask "furnace" do
  arch arm: "arm64", intel: "Intel"

  version "0.6.5"
  sha256 arm:   "1bcc8c6c655ec2a3e3f770588cb28a955208227c03f33ae4b22decf19fd7efbb",
         intel: "8391e2118f61a4b958dafbccb2867f36680302a8770cfad6466720f291e794c0"

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
