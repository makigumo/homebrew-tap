cask "rpcs3" do
  version "0.0.25-14449,e2c1e656b9a9d4ebbfcc96e91a11b9558aade7c1,e2c1e656"
  sha256 "cac6c1b00f46fd393a00099650a9925f6862ec79a92ddf5f844f20ee925adefe"

  url "https://github.com/RPCS3/rpcs3-binaries-mac/releases/download/build-#{version.csv.second}/rpcs3-v#{version.csv.first}-#{version.csv.third}_macos.dmg",
      verified: "github.com/RPCS3/rpcs3-binaries-mac"
  name "RPCS3"
  desc "PlayStation 3 emulator and debugger"
  homepage "https://rpcs3.net/"

  livecheck do
    url "https://api.github.com/repos/RPCS3/rpcs3-binaries-mac/releases/latest"
    regex(%r{.*/releases/download/build-(.+)/rpcs3-v(\d+\.\d+\.\d+-\d+)-(.+)_macos.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[0]},#{match[2]}"
      end
    end
  end

  app "RPCS3.app"

  zap trash: [
    "~/Library/Application Support/rpcs3",
    "~/Library/Caches/rpcs3",
    "~/Library/Preferences/net.rpcs3.rpcs3.plist",
    "~/Library/Saved Application State/net.rpcs3.rpcs3.savedState",
  ]
end
