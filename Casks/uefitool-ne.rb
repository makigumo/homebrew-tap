cask "uefitool-ne" do
  version "A66"
  sha256 "a0e1b8d2992e5549226253001b865bdc2caea1a33538a5588dc6934ce132bbe6"

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
