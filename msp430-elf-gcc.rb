class Msp430ElfGcc < Formula
  desc "GNU compiler collection for mips-elf"
  homepage "https://gcc.gnu.org"
  url "https://ftp.gnu.org/gnu/gcc/gcc-15.2.0/gcc-15.2.0.tar.xz"
  mirror "https://ftpmirror.gnu.org/gcc/gcc-15.2.0/gcc-15.2.0.tar.xz"
  sha256 "438fd996826b0c82485a29da03a72d71d6e3541a83ec702df4271f6fe025d24e"
  license "GPL-3.0-or-later" => { with: "GCC-exception-3.1" }

  livecheck do
    formula "gcc"
  end

  depends_on "gmp"
  depends_on "libmpc"
  depends_on "mpfr"
  depends_on "msp430-elf-binutils"

  def install
    target = "msp430-elf"
    mkdir "msp430-elf-gcc-build" do
      system "../configure", "--target=#{target}",
                             "--prefix=#{prefix}",
                             "--infodir=#{info}/#{target}",
                             "--disable-nls",
                             "--without-isl",
                             "--without-headers",
                             "--with-as=#{Formula["msp430-elf-binutils"].bin}/msp430-elf-as",
                             "--with-ld=#{Formula["msp430-elf-binutils"].bin}/msp430-elf-ld",
                             "--enable-languages=c,c++"
      system "make", "all-gcc"
      system "make", "install-gcc"
      # system "make", "all-target-libgcc"
      # system "make", "install-target-libgcc"

      # FSF-related man pages may conflict with native gcc
      (share/"man/man7").rmtree
    end
  end

  test do
    (testpath/"test-c.c").write <<~EOS
      int main(void)
      {
        int i=0;
        while(i<10) i++;
        return i;
      }
    EOS
    system "#{bin}/msp430-elf-gcc", "-c", "-o", "test-c.o", "test-c.c"
    assert_match "file format elf32-msp430",
                 shell_output("#{Formula["msp430-elf-binutils"].bin}/msp430-elf-objdump -a test-c.o")
  end
end
