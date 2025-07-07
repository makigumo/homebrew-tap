class Renderdoc < Formula
  desc "Stand-alone graphics debugging tool"
  homepage "https://renderdoc.org"
  url "https://github.com/baldurk/renderdoc/archive/refs/tags/v1.39.tar.gz"
  sha256 "2ceed91c783265dc372a1394b26cf79596f970fd05138bb9913e74f9996a7243"
  license "MIT"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "cmake" => :build
  depends_on "pcre"
  depends_on "python@3.13"
  depends_on "qt@5"

  def install
    args = %w[
      -DENABLE_METAL=ON
      -DCMAKE_BUILD_TYPE=Release
    ]
    system "cmake", "-S", ".", "-B", "build", *args, *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "false"
  end
end
