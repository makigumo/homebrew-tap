cask "uefitool-ne" do
  version "A63"
  sha256 "194b62b455a5e2da4256c9cc420bb409c6b296d4306bc2179954702267e88e76"

  url "https://github.com/LongSoft/UEFITool/releases/download/#{version}/UEFITool_NE_#{version}_mac.zip"
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
