cask "shadps4-qt" do
  version "0.12.0"
  sha256 "2fa767266ee51449aa2c26f10e6ebd2dd2bc49aea4d63678de74e5b91c9ded15"

  url "https://github.com/shadps4-emu/shadPS4/releases/download/v.#{version}/shadps4-macos-qt-#{version}.zip",
      verified: "github.com/shadps4-emu/shadPS4/"
  name "shadps4-qt"
  desc "PS4 emulator"
  homepage "https://shadps4.net/"

  livecheck do
    url :url
    regex(/(\d+\.\d+\.\d+)/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :sequoia"

  app "shadps4.app"

  zap trash: [
    "~/Library/Application Support/shadPS4",
    "~/Library/Preferences/com.yourcompany.shadps4.plist",
    "~/Library/Saved Application State/com.yourcompany.shadps4.savedState",
  ]
end
