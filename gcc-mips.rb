class GccMips < Formula
  desc "MIPS GNU compiler collection"
  homepage "https://gcc.gnu.org/"
  head "svn://gcc.gnu.org/svn/gcc/trunk"

  stable do
      url "https://ftp.gnu.org/gnu/gcc/gcc-7.3.0/gcc-7.3.0.tar.xz"
      mirror "https://ftpmirror.gnu.org/gcc/gcc-7.3.0/gcc-7.3.0.tar.xz"
      sha256 "832ca6ae04636adbb430e865a1451adf6979ab44ca1c8374f61fba65645ce15c"
  end

  depends_on "gmp"
  depends_on "libmpc"
  depends_on "mpfr"
  depends_on "isl"

  # GCC bootstraps itself, so it is OK to have an incompatible C++ stdlib
  cxxstdlib_check :skip

  resource "binutils" do
    url "https://ftp.gnu.org/gnu/binutils/binutils-2.30.tar.gz"
    mirror "https://ftpmirror.gnu.org/binutils/binutils-2.30.tar.gz"
    sha256 "8c3850195d1c093d290a716e20ebcaa72eda32abf5e3d8611154b39cff79e9ea"
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
