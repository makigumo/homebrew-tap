class RustyPsn < Formula
  desc "Get yourself some updates for those ps3 games, will ya?"
  homepage "https://github.com/RainbowCookie32/rusty-psn"
  url "https://github.com/RainbowCookie32/rusty-psn/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "e78d2098dbf1717af64dfd3df06126669c77d03330ea95984362d80b9b7c7f0e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
