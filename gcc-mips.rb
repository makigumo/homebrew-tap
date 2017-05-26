class GccMips < Formula
  desc "GNU compiler collection"
  homepage "https://gcc.gnu.org/"

  head "svn://gcc.gnu.org/svn/gcc/trunk"

  stable do
    url "https://ftp.gnu.org/gnu/gcc/gcc-7.1.0/gcc-7.1.0.tar.bz2"
    mirror "https://ftpmirror.gnu.org/gcc/gcc-7.1.0/gcc-7.1.0.tar.bz2"
    sha256 "8a8136c235f64c6fef69cac0d73a46a1a09bb250776a050aec8f9fc880bebc17"
  end

  depends_on "gmp"
  depends_on "libmpc"
  depends_on "mpfr"
  depends_on "isl"

  resource "binutils" do
    url "https://ftpmirror.gnu.org/binutils/binutils-2.28.tar.gz"
    sha256 "cd717966fc761d840d451dbd58d44e1e5b92949d2073d75b73fccb476d772fcf"
  end

  # Fix for libgccjit.so linkage on Darwin
  # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=64089
  # https://github.com/Homebrew/homebrew-core/issues/1872#issuecomment-225625332
  # https://github.com/Homebrew/homebrew-core/issues/1872#issuecomment-225626490
  patch do
    url "https://raw.githubusercontent.com/Homebrew/formula-patches/e9e0ee09389a54cc4c8fe1c24ebca3cd765ed0ba/gcc/6.1.0-jit.patch"
    sha256 "863957f90a934ee8f89707980473769cff47ca0663c3906992da6afb242fb220"
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
