cask "virtualbox-extension-pack" do
  version "7.1.6"
  sha256 "c13e47d3fb2c849019accb03353c7d04ffb9c264920075972ed2e2befe3cdd8b"

  url "https://download.virtualbox.org/virtualbox/#{version}/Oracle_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  name "Oracle VirtualBox Extension Pack"
  desc "Extend the functionality of VirtualBox"
  homepage "https://www.virtualbox.org/"

  livecheck do
    url "https://download.virtualbox.org/virtualbox/LATEST.TXT"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "virtualbox-extension-pack-beta"
  depends_on cask: "virtualbox"
  container type: :naked

  stage_only true

  postflight do
    system_command "/usr/local/bin/VBoxManage",
                   args:  [
                     "extpack", "install",
                     "--replace", "#{staged_path}/Oracle_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
                   ],
                   input: "y",
                   sudo:  true
  end

  uninstall_postflight do
    next unless File.exist?("/usr/local/bin/VBoxManage")

    begin
      system_command "/usr/local/bin/VBoxManage",
                     args: [
                       "extpack", "uninstall",
                       "Oracle VirtualBox Extension Pack"
                     ],
                     sudo: true
    rescue
    end
  end

  caveats do
    license "https://www.virtualbox.org/wiki/VirtualBox_PUEL"
  end
end
