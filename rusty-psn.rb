class RustyPsn < Formula
  desc "Get yourself some updates for those ps3 games, will ya?"
  homepage "https://github.com/RainbowCookie32/rusty-psn"
  url "https://github.com/RainbowCookie32/rusty-psn/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "c6adaa982657fae8840e5aceaa1ae85ee96a69fd59957ef88f3f2c394d473ea4"
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
