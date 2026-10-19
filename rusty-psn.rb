class RustyPsn < Formula
  desc "Get yourself some updates for those ps3 games, will ya?"
  homepage "https://github.com/RainbowCookie32/rusty-psn"
  url "https://github.com/RainbowCookie32/rusty-psn/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "db1c60ee06478c0319c538ec4c69c271f915b960df492f6d8feb2f48aacb750a"
  license "MIT"

  depends_on "rust" => :build

  def install
    # update version
    inreplace "Cargo.toml", /^(version\s*=\s*".*")$/, "version = \"#{version}\""

    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
