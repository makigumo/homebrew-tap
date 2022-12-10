class Svls < Formula
  desc "SystemVerilog language server"
  homepage "https://github.com/dalance/svls"
  url "https://github.com/dalance/svls/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "c4d7c8f26687ff42aa86e55f902ada8a94114d75771847f79bea76e80637ea86"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "svls", "--version"
  end
end
