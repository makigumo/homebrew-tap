class MipsElfBinutils < Formula
  desc "GNU Binutils for mips-elf cross development"
  homepage "https://www.gnu.org/software/binutils/"
  url "https://ftpmirror.gnu.org/gnu/binutils/binutils-2.45.1.tar.xz"
  mirror "https://ftp.gnu.org/binutils/binutils-2.45.1.tar.xz"
  sha256 "5fe101e6fe9d18fdec95962d81ed670fdee5f37e3f48f0bef87bddf862513aa5"
  license "GPL-3.0-or-later"

  livecheck do
    formula "binutils"
  end

  depends_on "texinfo" => :build

  def install
    target = "mips-elf"
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
       li $t0,1
      b 0
       nop
    EOS
    system "#{bin}/mips-elf-as", "-o", "test-s.o", "test-s.s"
    assert_match "file format elf32-bigmips",
                 shell_output("#{bin}/mips-elf-objdump -a test-s.o")
    assert_match "f()", shell_output("#{bin}/mips-elf-c++filt _Z1fv")
  end
end
