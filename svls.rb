class Svls < Formula
  desc "SystemVerilog language server"
  homepage "https://github.com/dalance/svls"
  url "https://github.com/dalance/svls/archive/refs/tags/v0.2.7.tar.gz"
  sha256 "1da2f93ce634fe2a0772a8b5b6335a5fa77ca0b801939323e53f8a0cea0e925f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/svls", "--version"
  end
end
