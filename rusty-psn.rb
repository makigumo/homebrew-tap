class RustyPsn < Formula
  desc "Get yourself some updates for those ps3 games, will ya?"
  homepage "https://github.com/RainbowCookie32/rusty-psn"
  url "https://github.com/RainbowCookie32/rusty-psn/archive/refs/tags/v0.4.6.tar.gz"
  sha256 "12ff28add595dc038d9520892738ea89aa637789e3d0a55a2ede8b236c8918f6"
  license "MIT"

  depends_on "rust" => :build

  patch :DATA

  def install
    # update version
    inreplace "Cargo.toml", /^(version\s*=\s*".*")$/, "version = \"#{version}\""

    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
__END__
diff --git a/src/utils.rs b/src/utils.rs
index b66214f..6769e00 100644
--- a/src/utils.rs
+++ b/src/utils.rs
@@ -10,10 +10,10 @@ use tokio::io::{AsyncReadExt, AsyncSeekExt, SeekFrom};
 
 use crate::psn::DownloadError;
 
-#[cfg(target_os = "windows")]
+#[cfg(target_family = "windows")]
 const INVALID_CHARS: [char; 9] = ['<', '>', ':', '"', '/', '\\', '|', '?', '*'];
 
-#[cfg(target_os = "linux")]
+#[cfg(target_family = "unix")]
 const INVALID_CHARS: [char; 1] = ['/'];
 
 fn sanitize_title(title: &str) -> String {
