class RustyPsn < Formula
  desc "Get yourself some updates for those ps3 games, will ya?"
  homepage "https://github.com/RainbowCookie32/rusty-psn"
  url "https://github.com/RainbowCookie32/rusty-psn/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "0d29f7347dce324bc031edfd8fe35941803bb58ea0e216e2cf7e512b39a800b5"
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
