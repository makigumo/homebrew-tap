cask "uefitool-ne" do
  version "A61"
  sha256 "1fe209089e913f810acfb83e34141fa6ab7a70d14b2db22e080d8254611637c3"

  url "https://github.com/LongSoft/UEFITool/releases/download/#{version}/UEFITool_NE_#{version}_mac.zip"
  name "UEFITool NE"
  desc "UEFI firmware image viewer and editor"
  homepage "https://github.com/LongSoft/UEFITool"

  livecheck do
    url "https://github.com/LongSoft/UEFITool"
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/download/(.?\d+(?:\.\d+)*)/UEFITool_NE_\1_mac\.zip}i)
      next if match.blank?

      (match[1]).to_s
    end
  end

  app "UEFITool.app"
end
