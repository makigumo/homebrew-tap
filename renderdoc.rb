class Renderdoc < Formula
  desc "Stand-alone graphics debugging tool"
  homepage "https://renderdoc.org"
  url "https://github.com/baldurk/renderdoc/archive/refs/tags/v1.47.tar.gz"
  sha256 "d8fbfb9a19f1e692e73bf9dddd9d689da0d15619da278c5dd022816fec281e36"
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
