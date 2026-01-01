cask "ryujinx@canary" do
  version "1.3.243"
  sha256 "2e9117b3f3275ce9f7453e5ba9be434295a2d86a60662d95b4026c823ed4d9a2"

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
