class GccMips < Formula
  desc "MIPS GNU compiler collection"
  homepage "https://gcc.gnu.org/"
  head "svn://gcc.gnu.org/svn/gcc/trunk"
  url "https://ftp.gnu.org/gnu/gcc/gcc-8.1.0/gcc-8.1.0.tar.xz"
  mirror "https://ftpmirror.gnu.org/gcc/gcc-8.1.0/gcc-8.1.0.tar.xz"
  sha256 "1d1866f992626e61349a1ccd0b8d5253816222cdc13390dcfaa74b093aa2b153"

  depends_on "gmp"
  depends_on "isl"
  depends_on "libmpc"
  depends_on "mpfr"

  # GCC bootstraps itself, so it is OK to have an incompatible C++ stdlib
  cxxstdlib_check :skip

  resource "binutils" do
    url "https://ftp.gnu.org/gnu/binutils/binutils-2.31.tar.gz"
    mirror "https://ftpmirror.gnu.org/binutils/binutils-2.31.tar.gz"
    sha256 "5a9de9199f22ca7f35eac378f93c45ead636994fc59f3ac08f6b3569f73fcf6f"
  end

  def target_archs
    ["mips"].freeze
  end

  def install
    target_archs.each do |arch|
      target = "#{arch}-elf"

      resource("binutils").stage do
        args = %W[
          --target=#{target}
          --prefix=#{prefix}/binutils-#{arch}
          --enable-targets=#{target}
          --disable-multilib
          --disable-nls
        ]
        mkdir "build-#{arch}" do
          system "../configure", *args
          system "make"
          system "make", "install"
        end
      end

      # Put the newly built binutils into our PATH
      ENV.prepend_path "PATH", "#{prefix}/binutils-#{arch}/bin"

      # Build the GCC compiler
      args = %W[
        --target=#{target}
        --prefix=#{prefix}
        --enable-languages=c,c++
        --with-ld=#{prefix}/binutils-#{arch}/bin/#{target}-ld
        --with-as=#{prefix}/binutils-#{arch}/bin/#{target}-as
        --with-gmp=#{Formula["gmp"].opt_prefix}
        --with-mpfr=#{Formula["mpfr"].opt_prefix}
        --with-mpc=#{Formula["libmpc"].opt_prefix}
        --with-isl=#{Formula["isl"].opt_prefix}
        --disable-multilib
        --disable-nls
      ]

      mkdir "build-gcc-#{arch}" do
        system "../configure", *args
        system "make", "all-gcc"
        system "make", "install-gcc"
#        system "make"
#        system "make", "install"
      end

      Dir["#{prefix}/binutils-#{arch}/bin/*"].each { |f| ln_s f, bin }
    end
  end
end
