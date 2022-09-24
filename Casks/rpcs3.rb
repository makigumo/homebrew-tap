cask "rpcs3" do
  version "0.0.24-14176,bd1fb86492d208693d3b5b65cf5b41e26d42b6a6,bd1fb864"
  sha256 "dcd4343f25edab620cf871657a7fb7b6f3d0c72364a37163e0477f31454135d1"

  url "https://github.com/RPCS3/rpcs3-binaries-mac/releases/download/build-#{version.csv.second}/rpcs3-v#{version.csv.first}-#{version.csv.third}_macos.dmg",
      verified: "github.com/RPCS3/rpcs3-binaries-mac"
  name "RPCS3"
  desc "PlayStation 3 emulator and debugger"
  homepage "https://rpcs3.net/"

  livecheck do
    url "https://rpcs3.net/download"
    regex(%r{href=.*/rpcs3-binaries-mac/releases/download/build-(.+)/rpcs3-v(\d+\.\d+\.\d+-\d+)-(.+)_macos.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[0]},#{match[2]}"
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/rpcs3",
    "~/Library/Caches/rpcs3",
    "~/Library/Preferences/net.rpcs3.rpcs3.plist",
    "~/Library/Saved Application State/net.rpcs3.rpcs3.savedState",
  ]
end
