cask "rpcs3" do
  version "0.0.29-15622,3c70573be0b975970d4927734bf4636ad7424805,3c70573b"
  sha256 "303d3a8035d4808884a9b4cc9a3be796caae8f743425ea1c1f21354c932752d5"

  url "https://github.com/RPCS3/rpcs3-binaries-mac/releases/download/build-#{version.csv.second}/rpcs3-v#{version.csv.first}-#{version.csv.third}_macos.dmg",
      verified: "github.com/RPCS3/rpcs3-binaries-mac/"
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
