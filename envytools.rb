class Envytools < Formula
  desc "Tools for people envious of nvidia's blob driver"
  homepage "https://github.com/envytools/envytools"
  head "https://github.com/envytools/envytools.git"

  livecheck do
    skip "No version information available"
  end

  depends_on "bison" => :build
  depends_on "cmake" => :build
  depends_on "flex" => :build
  depends_on "pkg-config" => :build
  depends_on "libxml2"

  def install
    # disable nvbios
    inreplace "CMakeLists.txt", "add_subdirectory(nvbios)", "# add_subdirectory(nvbios)"

    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
