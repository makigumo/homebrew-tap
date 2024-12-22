class RustyPsn < Formula
  desc "Get yourself some updates for those ps3 games, will ya?"
  homepage "https://github.com/RainbowCookie32/rusty-psn"
  url "https://github.com/RainbowCookie32/rusty-psn/archive/refs/tags/v0.5.4.tar.gz"
  sha256 "45358bc6afc9b36c2aa29e172cb6172ac88b6537825f9f5abd0c9ae0930c2624"
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
