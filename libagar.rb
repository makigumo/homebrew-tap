class Libagar < Formula
  desc "Cross-Platform GUI Toolkit (stable)"
  homepage "https://libagar.org/"
  url "https://github.com/JulNadeauCA/libagar/releases/download/v1.7.0/agar-1.7.0.tar.gz"
  sha256 "3822fd7fb225207cc1596d789b5d45ed8ba034a3dd1810d033959ed1c8cc74b4"

  depends_on "freetype"
  depends_on "mesa-glu"

  def install
    system "./configure", *std_configure_args, "--disable-silent-rules"
    system "make"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test libagar`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
