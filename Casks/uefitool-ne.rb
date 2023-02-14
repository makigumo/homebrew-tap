cask "uefitool-ne" do
  version "A64"
  sha256 "3a3346215478d5feb79eeae155119bccdd9f807029172e012dbf9f1445e5d7dc"

  url "https://github.com/LongSoft/UEFITool/releases/download/#{version}/UEFITool_NE_#{version}_universal_mac.zip"
  name "UEFITool NE"
  desc "UEFI firmware image viewer and editor"
  homepage "https://github.com/LongSoft/UEFITool"

  livecheck do
    url :url
    regex(%r{/LongSoft/UEFITool/releases/tag/(.\d+)}i)
    strategy :github_latest do |page, regex|
      match = page.match(regex)
      next if match.blank?

      (match[1]).to_s
    end
  end

  app "UEFITool.app"
end
