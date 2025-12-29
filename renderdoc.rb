class Renderdoc < Formula
  desc "Stand-alone graphics debugging tool"
  homepage "https://renderdoc.org"
  url "https://github.com/baldurk/renderdoc/archive/refs/tags/v1.42.tar.gz"
  sha256 "8bed7034f01c1b2a5dd6fd3ab1d94143d4078684d5c3dc7c976c2c927c02dd5f"
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
