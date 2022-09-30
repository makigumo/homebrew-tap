class GjitenKai < Formula
  desc "A modern re-writting of Gjiten, a japanese dictionary"
  homepage "https://github.com/odrevet/gjiten-kai"
  head "https://github.com/odrevet/gjiten-kai.git"

  depends_on "cmake" => :build
  depends_on "gtk+3"
  depends_on "libsoup"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test gjiten-kai`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
