cask "uefitool-ne" do
  version "68"
  sha256 "7a43a6b0272919119ef89bcb3bd6eb3113755040574cad0d7c0bec9918a50439"

  url "https://github.com/LongSoft/UEFITool/releases/download/A#{version}/UEFITool_NE_A#{version}_universal_mac.zip"
  name "UEFITool NE"
  desc "UEFI firmware image viewer and editor"
  homepage "https://github.com/LongSoft/UEFITool"

  app "UEFITool.app"
end
