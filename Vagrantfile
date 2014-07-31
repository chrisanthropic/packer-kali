# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
  config.vm.box = "Kali_vmware_2014-07-30T20:33:51Z.box" #download box from vagrant cloud: org/boxname
 
  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.customize ["modifyvm", :id, "--nic2", "intnet", "--intnet1", "172.16.189.5", "--macaddress2", "080027f34a5d"]
  end

  config.vm.provider "vmware_workstation" do |vmware|
  config.vm.network "private_network", ip: "172.16.189.5", :adapter => 2, :mac => "080027f34a5d"
    vmware.gui = true
  end

end