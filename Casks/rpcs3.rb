cask "rpcs3" do
  version "0.0.29-15809,f8e0c9e27ab81d586dfac0e228074d4d5e848934,f8e0c9e2"
  sha256 "c0705fb96471ca29a42a8ecd3f468880bb53f2656995922a845e61c768f4c76f"

  url "https://github.com/RPCS3/rpcs3-binaries-mac/releases/download/build-#{version.csv.second}/rpcs3-v#{version.csv.first}-#{version.csv.third}_macos.7z",
      verified: "github.com/RPCS3/rpcs3-binaries-mac/"
  name "RPCS3"
  desc "PlayStation 3 emulator and debugger"
  homepage "https://rpcs3.net/"

  livecheck do
    url :url
    regex(%r{^.+build-(.+)/rpcs3-v(\d+\.\d+\.\d+-\d+)-(.+)_.*$}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          "#{match[2]},#{match[1]},#{match[3]}"
        end
      end.flatten
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
