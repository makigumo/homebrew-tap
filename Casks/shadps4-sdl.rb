cask "shadps4-sdl" do
  version "0.12.5"
  sha256 "bd33e6a439647f5d186a45cbcfd987587686cb45e97e3c2ca85bd81cfe4b2f32"

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
