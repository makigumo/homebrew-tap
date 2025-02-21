cask "uefitool-ne" do
  version "69"
  sha256 "2ffc26b973e1fb68f74d5bfedebc594534f5eaf3ccf2b0087c99c7f3f5b5bb79"

  url "https://github.com/LongSoft/UEFITool/releases/download/A#{version}/UEFITool_NE_A#{version}_universal_mac.zip"
  name "UEFITool NE"
  desc "UEFI firmware image viewer and editor"
  homepage "https://github.com/LongSoft/UEFITool"

  app "UEFITool.app"
end
