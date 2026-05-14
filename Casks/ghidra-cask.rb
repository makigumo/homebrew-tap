cask "ghidra-cask" do
  # Use `-` instead of the usual `,` in the version, because a `,` causes issues
  # with log4j finding ghidra due to misinterpreting the `,` in the path
  version "12.1-20260513"
  sha256 "aa5cbcbbf48f41ca185fce900e19592f1ade4cd5994eb6e0ede468dac8a6f302"

  url "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_#{version.split("-").first}_build/ghidra_#{version.split("-").first}_PUBLIC_#{version.split("-").second}.zip",
      verified: "github.com/NationalSecurityAgency/ghidra/"
  name "Ghidra"
  desc "Software reverse engineering (SRE) suite of tools"
  homepage "https://www.ghidra-sre.org/"

  livecheck do
    url :url
    regex(/^ghidra[._-]v?(\d+(?:\.\d+)+)[._-]PUBLIC[._-](\d+)\.zip$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]}-#{match[2]}"
      end
    end
  end

  binary "ghidra_#{version.split("-").first}_PUBLIC/ghidraRun"

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "17+"
  end
end
