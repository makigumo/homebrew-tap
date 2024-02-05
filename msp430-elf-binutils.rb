class Msp430ElfBinutils < Formula
  desc "GNU Binutils for mips-elf cross development"
  homepage "https://www.gnu.org/software/binutils/"
  url "https://ftp.gnu.org/gnu/binutils/binutils-2.42.tar.xz"
  mirror "https://ftpmirror.gnu.org/binutils/binutils-2.42.tar.xz"
  sha256 "f6e4d41fd5fc778b06b7891457b3620da5ecea1006c6a4a41ae998109f85a800"
  license "GPL-3.0-or-later"

  livecheck do
    formula "binutils"
  end

  depends_on "texinfo" => :build

  def install
    target = "msp430-elf"
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
      .global _start
      _start:
      mov.w #0x280,SP
      jmp _start
      nop
    EOS
    system "#{bin}/msp430-elf-as", "-o", "test-s.o", "test-s.s"
    assert_match "file format elf32-msp430",
                 shell_output("#{bin}/msp430-elf-objdump -a test-s.o")
    assert_match "f()", shell_output("#{bin}/msp430-elf-c++filt _Z1fv")
  end
end
