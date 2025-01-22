class IntelPcm < Formula
  desc "Intel Performance Counter Monitor"
  homepage "https://github.com/intel/pcm"
  url "https://github.com/intel/pcm/archive/refs/tags/202409.tar.gz"
  sha256 "cb8e40528940967a62e16eb6371317b8cd74d3d7bab20aa78e0c5f885146ee38"
  license "BSD-3-Clause"

  depends_on "cmake" => :build

  def install
    cd "src/MacMSRDriver/PcmMsr" do
      inreplace "CMakeLists.txt" do |s|
        # don't install kext automatically
        s.gsub! "/Library/Extensions", kext_prefix
        s.gsub! "install(CODE \"execute_process(COMMAND kmutil load -b com.intel.driver.PcmMsr)\")", ""
      end
    end

    system "cmake", "-S", ".", "-B", "build",
           *std_cmake_args,
           "-DCMAKE_INSTALL_RPATH=#{rpath}"
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  def caveats
    on_macos do
      <<~EOS
        For #{name} the kernel extension must be installed by the root user:

          sudo cp -pR #{kext_prefix}/PcmMsrDriver.kext /Library/Extensions/
          sudo chown -R root:wheel /Library/Extensions/PcmMsrDriver.kext
          sudo touch /Library/Extensions/
      EOS
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test intel-pcm`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
