class Hactool < Formula
  desc "hactool is a tool to view information about, decrypt, and extract common file formats for the Nintendo Switch, especially Nintendo Content Archives."
  homepage "https://github.com/SciresM/hactool"
  version "1.3.2-r1"
  url "https://github.com/SciresM/hactool/archive/1.3.2-r1.tar.gz"
  sha256 "006d692420f722833767948831f41ae41d322b516c808653e6aabad2e8d7046d"

  def install
    (buildpath/"config.mk").write <<~EOS
      CC = clang
      CFLAGS = -O3 -Wall -Wextra -pedantic -std=gnu11 -fPIC
      LDFLAGS = -lmbedtls -lmbedx509 -lmbedcrypto
    EOS
    system "make"
    bin.install "hactool"
  end

  test do
    system "false"
  end
end
