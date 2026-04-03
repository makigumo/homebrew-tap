class RiscvElfBinutils < Formula
  desc "GNU Binutils for mips-elf cross development"
  homepage "https://www.gnu.org/software/binutils/"
  url "https://ftpmirror.gnu.org/gnu/binutils/binutils-2.46.0.tar.xz"
  mirror "https://ftp.gnu.org/binutils/binutils-2.46.0.tar.xz"
  sha256 "d75a94f4d73e7a4086f7513e67e439e8fcdcbb726ffe63f4661744e6256b2cf2"
  license "GPL-3.0-or-later"

  livecheck do
    formula "binutils"
  end

  depends_on "texinfo" => :build

  def install
    target = "riscv-elf"
    system "./configure", "--target=#{target}",
           "--prefix=#{prefix}",
           "--libdir=#{lib}/#{target}",
           "--infodir=#{info}/#{target}",
           "--disable-nls"
    system "make"
    system "make", "install"
  end

  test do
    (testpath/"test-s.s").write <<~EOS
      .section .text
      .globl _start
      _start:
      lb t0, 8(sp)
      ret
    EOS
    system "#{bin}/riscv-elf-as", "-o", "test-s.o", "test-s.s"
    assert_match "file format elf32-littleriscv",
                 shell_output("#{bin}/riscv-elf-objdump -a test-s.o")
    assert_match "f()", shell_output("#{bin}/riscv-elf-c++filt _Z1fv")
  end
end
