cask "uefitool-ne" do
  version "A62"
  sha256 "415703306c78717752a53606e4473376d4e58cfc7817a72ead83616ae64ea6b9"

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
