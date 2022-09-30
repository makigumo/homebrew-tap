class Svls < Formula
  desc "SystemVerilog language server"
  homepage "https://github.com/dalance/svls"
  url "https://github.com/dalance/svls/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "c342192b632f191158c29c971267ae865c6da940a8440cff477aae7675aa104b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "svls", "--version"
  end
end
