cask "uefitool-ne" do
  version "A65"
  sha256 "adf9a8452531504949ebc3eb45746083f0d1fb782326d8172cf7b92451a13f9f"

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
