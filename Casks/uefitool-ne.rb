cask "uefitool-ne" do
  version "67"
  sha256 "41e631fa6ec01c3471b00c1cdf1b5dff30afbe39f50b373654676613033ef428"

  url "https://github.com/LongSoft/UEFITool/releases/download/A#{version}/UEFITool_NE_A#{version}_universal_mac.zip"
  name "UEFITool NE"
  desc "UEFI firmware image viewer and editor"
  homepage "https://github.com/LongSoft/UEFITool"

  app "UEFITool.app"
end
