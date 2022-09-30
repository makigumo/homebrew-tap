class MipsElfGcc < Formula
  desc "GNU compiler collection for mips-elf"
  homepage "https://gcc.gnu.org"
  url "https://ftp.gnu.org/gnu/gcc/gcc-12.2.0/gcc-12.2.0.tar.xz"
  mirror "https://ftpmirror.gnu.org/gcc/gcc-12.2.0/gcc-12.2.0.tar.xz"
  sha256 "e549cf9cf3594a00e27b6589d4322d70e0720cdd213f39beb4181e06926230ff"
  license "GPL-3.0-or-later" => { with: "GCC-exception-3.1" }

  livecheck do
    formula "gcc"
  end

  depends_on "gmp"
  depends_on "libmpc"
  depends_on "mips-elf-binutils"
  depends_on "mpfr"

  def install
    target = "mips-elf"
    mkdir "mips-elf-gcc-build" do
      system "../configure", "--target=#{target}",
                             "--prefix=#{prefix}",
                             "--infodir=#{info}/#{target}",
                             "--disable-nls",
                             "--without-isl",
                             "--without-headers",
                             "--with-as=#{Formula["mips-elf-binutils"].bin}/mips-elf-as",
                             "--with-ld=#{Formula["mips-elf-binutils"].bin}/mips-elf-ld",
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
    system "#{bin}/mips-elf-gcc", "-c", "-o", "test-c.o", "test-c.c"
    assert_match "file format elf32-bigmips",
                 shell_output("#{Formula["mips-elf-binutils"].bin}/mips-elf-objdump -a test-c.o")
  end
end
