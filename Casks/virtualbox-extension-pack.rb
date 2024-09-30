cask "virtualbox-extension-pack" do
  version "7.1.2"
  sha256 "afd7a79ce2bd0142a890ac01f580534f1a96f1ffbaa1ad17d7512751cde19f08"

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
