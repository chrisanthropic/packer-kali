# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
  config.vm.box = "cmad/kali" #download box from vagrant cloud: org/boxname

    config.vm.provider "virtualbox" do |vb|
    vb.gui = true   
  end
    config.vm.provider "vmware_fusion" do |v|
    v.gui = true
  end

end
