cask "shadps4-sdl" do
  version "0.13.0"
  sha256 "e9f1074390caba7d2a85bd9e80bb9ab17796e24981998290f0ff45bf8bd45fe8"

  url "https://github.com/shadps4-emu/shadPS4/releases/download/v.#{version}/shadps4-macos-sdl-#{version}.zip",
      verified: "github.com/shadps4-emu/shadPS4/"
  name "shadps4-sdl"
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

  binary "shadps4"

  zap trash: [
    "~/Library/Application Support/shadPS4",
    "~/Library/Preferences/com.yourcompany.shadps4.plist",
    "~/Library/Saved Application State/com.yourcompany.shadps4.savedState",
  ]
end
