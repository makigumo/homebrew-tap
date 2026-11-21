class Libagar < Formula
  desc "Cross-Platform GUI Toolkit (stable)"
  homepage "https://libagar.org/"
  url "https://stable.hypertriton.com/agar/agar-1.7.1.tar.gz"
  sha256 "d1eb994c8262cd70df1d4d9462c5453089db5dc815d01b5767508c2923a5965c"

  livecheck do
    url "https://stable.hypertriton.com/agar/"
    regex(/href=["']?.*?agar-(\d+(?:\.\d+)+)\.tar\.gz["' >]/i)
  end

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
