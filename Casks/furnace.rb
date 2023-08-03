cask "furnace" do
  arch arm: "arm64", intel: "Intel"

  version "0.6pre7"
  sha256 arm:   "8863c7f7becea62c2a65e4121e2cfe4d843d23e50e483eb68516df3301c9bbbc",
         intel: "74d82a21ce32bed02864493f45626e0aba3a174c50cf27efe69893a1ba69da35"

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
