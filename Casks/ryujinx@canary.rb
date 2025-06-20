cask "ryujinx@canary" do
  version "1.3.94"
  sha256 "1bbcc9ff6d612f5e65a496b12cd1987fc9256bc7e817ac720fa0576d93a5ff65"

  url "https://git.ryujinx.app/api/v4/projects/68/packages/generic/Ryubing-Canary/#{version}/ryujinx-canary-#{version}-macos_universal.app.tar.gz"
  name "Ryujinx"
  desc "Experimental Nintendo Switch Emulator written in C#"
  homepage "https://ryujinx.app/"

  livecheck do
    url "https://git.ryujinx.app/api/v4/projects/68/releases"
    strategy :json do |json, _regex|
      json.map { |item| item["tag_name"] }
    end
  end

  depends_on macos: ">= :monterey"

  app "Ryujinx.app", target: "Ryujinx Canary.app"

  zap trash: [
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
    "~/Library/Preferences/Ryujinx.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
