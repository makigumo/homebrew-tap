class Openssh < Formula
  desc "OpenBSD freely-licensed SSH connectivity tools"
  homepage "http://www.openssh.com/"
  url "http://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-7.3p1.tar.gz"
  mirror "https://www.mirrorservice.org/pub/OpenBSD/OpenSSH/portable/openssh-7.3p1.tar.gz"
  version "7.3p1"
  sha256 "3ffb989a6dcaa69594c3b550d4855a5a2e1718ccdde7f5e36387b424220fbecc"

  # Please don't resubmit the keychain patch option. It will never be accepted.
  # https://github.com/Homebrew/homebrew-dupes/pull/482#issuecomment-118994372
  option "with-libressl", "Build with LibreSSL instead of OpenSSL"
  option "with-keychain-support", "Add native OS X Keychain and Launch Daemon support to ssh-agent"

  depends_on "openssl" => :recommended
  depends_on "libressl" => :optional
  depends_on "ldns" => :optional
  depends_on "pkg-config" => :build if build.with? "ldns"
  depends_on "autoconf" => :build if build.with? "keychain-support"

  if build.with? "keychain-support"
    patch do
      url "https://trac.macports.org/export/153360/trunk/dports/net/openssh/files/0002-Apple-keychain-integration-other-changes.patch"
      sha256 "ebc87b44d3cdd9391e1e30c38a957c02f899b7464499abe9c4025b0d707ffb2c"
    end
  end

  patch do
    url "https://trac.macports.org/export/153360/trunk/dports/net/openssh/files/patch-sshd.c-apple-sandbox-named-external.diff"
    sha256 "71f663f4f8d0c4aa33f92612e2b40f7749e39fe8fa5c3ce13575fd508e897ac3"
  end

  patch do
    url "https://trac.macports.org/export/153360/trunk/dports/net/openssh/files/patch-sandbox-darwin.c-apple-sandbox-named-external.diff"
    sha256 "215b73f36b9e4082c3e7e45d1b9858421d11c2a666d60e61fc18c915b4e9599b"
  end

  patch do
    url "https://trac.macports.org/export/153360/trunk/dports/net/openssh/files/pam.patch"
    sha256 "e70dd8efdf401ad61ee212329372931e505284d73adb38437dfb746eda08c742"
  end

  # Patch for SSH tunnelling issues caused by launchd changes on Yosemite
  patch do
    url "https://trac.macports.org/export/153360/trunk/dports/net/openssh/files/launchd.patch"
    sha256 "cc16517fb855ecfd4bd8d91c652418723dc29197715e81ba41d37b49470e9342"
  end

  def install
    ENV.append "CPPFLAGS", "-D__APPLE_SANDBOX_NAMED_EXTERNAL__"

    args = %W[
      --with-libedit
      --with-pam
      --with-kerberos5
      --prefix=#{prefix}
      --sysconfdir=#{etc}/ssh
    ]

    if build.with? "keychain-support"
      system "autoreconf -i"
      ENV.append "CPPFLAGS", "-D__APPLE_LAUNCHD__ -D__APPLE_KEYCHAIN__"
      ENV.append "LDFLAGS", "-framework CoreFoundation -framework SecurityFoundation -framework Security"
      args << "--with-keychain=apple"
    end

    if build.with? "libressl"
      args << "--with-ssl-dir=#{Formula["libressl"].opt_prefix}"
    else
      args << "--with-ssl-dir=#{Formula["openssl"].opt_prefix}"
    end

    args << "--with-ldns" if build.with? "ldns"

    system "./configure", *args
    system "make"
    system "make", "install"
  end

  def caveats
    if build.with? "keychain-support" then <<-EOS.undent
        NOTE: replacing system daemons is unsupported. Proceed at your own risk.
        For complete functionality, please modify:
          /System/Library/LaunchAgents/com.openbsd.ssh-agent.plist
        and change ProgramArguments from
          /usr/bin/ssh-agent
        to
          #{HOMEBREW_PREFIX}/bin/ssh-agent
        You will need to restart or issue the following commands
        for the changes to take effect:
          launchctl unload /System/Library/LaunchAgents/com.openbsd.ssh-agent.plist
          launchctl load /System/Library/LaunchAgents/com.openbsd.ssh-agent.plist
        Finally, add  these lines somewhere to your ~/.bash_profile:
          eval $(ssh-agent)
          function cleanup {
            echo "Killing SSH-Agent"
            kill -9 $SSH_AGENT_PID
          }
          trap cleanup EXIT
        After that, you can start storing private key passwords in
        your OS X Keychain.
      EOS
    end
  end
end
