cask "ryujinx@canary" do
  version "1.3.192"
  sha256 "2296865b7e6d896e7c71412260dd0aabdf237fcfd724233e0507a214a512f1a2"

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
