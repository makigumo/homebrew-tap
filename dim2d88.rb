class Dim2d88 < Formula
  desc "Converts DIM to D88 floppy disk images"
  homepage "https://github.com/yukke302/dim2d88"
  license ""
  head "https://github.com/yukke302/dim2d88.git"

  depends_on xcode: :build

  def install
    xcodebuild "SYMROOT=build", "-arch", Hardware::CPU.arch, "-configuration", "Release"
    bin.install "build/Release/dim2d88"
  end

  test do
    system "#{bin}/dim2d88"
  end
end
