class Unqar < Formula
  desc "Simple QAR (Quartus Archive) unpacker"
  homepage "https://github.com/makigumo/unqar"
  url "https://github.com/makigumo/unqar/archive/0.2.tar.gz"
  license "LGPL-3.0-only"
  sha256 "d9981660dceae95a2e700761aa6a74d59beb3967ac27741daa5d9d812415b85f"

  def install
    bin.install "unqar.py" => "unqar"
  end

  test do
    system "unqar"
  end

end
