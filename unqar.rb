class Unqar < Formula
  desc "Simple QAR (Quartus Archive) unpacker"
  homepage "https://github.com/makigumo/unqar"
  url "https://github.com/makigumo/unqar/archive/refs/tags/0.3.tar.gz"
  sha256 "0195d09824a112d5bd0eee5534b54199e5542d2dc0479084a8fed0103998b9dc"
  license "LGPL-3.0-only"

  def install
    bin.install "unqar.py" => "unqar"
  end

  test do
    system bin/"unqar"
  end
end
