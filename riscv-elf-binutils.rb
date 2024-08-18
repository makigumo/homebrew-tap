class RiscvElfBinutils < Formula
  desc "GNU Binutils for mips-elf cross development"
  homepage "https://www.gnu.org/software/binutils/"
  url "https://ftp.gnu.org/gnu/binutils/binutils-2.43.1.tar.xz"
  mirror "https://ftpmirror.gnu.org/binutils/binutils-2.43.1.tar.xz"
  sha256 "13f74202a3c4c51118b797a39ea4200d3f6cfbe224da6d1d95bb938480132dfd"
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
