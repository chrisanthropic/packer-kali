# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
  config.vm.box = "cmad/kali" #download box from vagrant cloud: org/boxname
  config.vm.synced_folder "assets/", "/root/THA/password-cracking/"
  #config.vm.box_url = "packer_Kali_vmware.box"  # This line is used for local testing.
    config.vm.provider "virtualbox" do |vb|
    vb.gui = true   
  end
    config.vm.provider "vmware_fusion" do |vmware|
    vmware.gui = true
  end

end