class Svls < Formula
  desc "SystemVerilog language server"
  homepage "https://github.com/dalance/svls"
  url "https://github.com/dalance/svls/archive/refs/tags/v0.2.8.tar.gz"
  sha256 "cfdec9756252a2b1921e55294a8b590354b595d192fd1f6c844a98b9d0f05bac"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/svls", "--version"
  end
end
