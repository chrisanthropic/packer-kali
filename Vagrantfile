# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|

### KALI
  config.vm.define "kali", primary: true do |kali|
    kali.vm.network "private_network", ip: "172.16.189.5", :adapter => 2, :mac => "080027f34a5d"
    kali.vm.box = "blackfin/kali"
    
    kali.vm.provider "virtualbox" do |vb|
      vb.gui = true
    end

    kali.vm.provider "vmware_workstation" do |vmware|
      vmware.gui = true
    end

    kali.vm.provider "vmware_desktop" do |vmware|
      vmware.gui = true
    end
    
    kali.vm.provider "vmware_fusion" do |vmware|
      vmware.gui = true
    end
  end

end