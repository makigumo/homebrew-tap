class RiscvElfGcc < Formula
  desc "GNU compiler collection for mips-elf"
  homepage "https://gcc.gnu.org"
  url "https://ftp.gnu.org/gnu/gcc/gcc-15.1.0/gcc-15.1.0.tar.xz"
  mirror "https://ftpmirror.gnu.org/gcc/gcc-15.1.0/gcc-15.1.0.tar.xz"
  sha256 "e2b09ec21660f01fecffb715e0120265216943f038d0e48a9868713e54f06cea"
  license "GPL-3.0-or-later" => { with: "GCC-exception-3.1" }

  livecheck do
    formula "gcc"
  end

  depends_on "gmp"
  depends_on "libmpc"
  depends_on "mpfr"
  depends_on "riscv-elf-binutils"

  def install
    target = "riscv-elf"
    mkdir "riscv-elf-gcc-build" do
      system "../configure", "--target=#{target}",
                             "--prefix=#{prefix}",
                             "--infodir=#{info}/#{target}",
                             "--disable-nls",
                             "--without-isl",
                             "--without-headers",
                             "--with-as=#{Formula["riscv-elf-binutils"].bin}/riscv-elf-as",
                             "--with-ld=#{Formula["riscv-elf-binutils"].bin}/riscv-elf-ld",
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
    system "#{bin}/riscv-elf-gcc", "-c", "-o", "test-c.o", "test-c.c"
    assert_match "file format elf32-littleriscv",
                 shell_output("#{Formula["riscv-elf-binutils"].bin}/riscv-elf-objdump -a test-c.o")
  end
end
