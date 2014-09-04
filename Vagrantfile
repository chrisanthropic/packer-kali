# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
  config.vm.define "kali", primary: true do |kali|
    config.vm.network "private_network", ip: "172.16.189.5", :adapter => 2, :mac => "080027f34a5d"
    kali.vm.box = "Kali_virtualbox_2014-09-04T00:19:36Z.box" #download box from vagrant cloud: org/boxname
    kali.vm.provider "virtualbox" do |vb|
      vb.gui = true
    end
  kali.vm.provider "vmware_workstation" do |vmware|
    vmware.gui = true
  end
end

config.vm.define "client", autostart: false do |client|
  client.vm.box = "cmad/THA-Client" #download box from vagrant cloud: org/boxname
  config.ssh.password  = "vagrant"
  config.ssh.username = "vagrant"
  client.vm.network "private_network", ip: "172.16.189.52", :mac => "080027958870", :adapter => 2 
 
 config.vm.provider "virtualbox" do |vb|
    vb.gui = true
  end
 
 config.vm.provider "vmware_workstation" do |vmware|
    vmware.gui = true
 end
end

config.vm.define "web", autostart: false do |web|
    config.ssh.password  = "vagrant"
    config.ssh.username = "vagrant"
    config.vm.network "private_network", ip: "172.16.189.100", :mac => "080027658BC4", :adapter => 2 
    web.vm.box = "cmad/THA-Vuln"
    web.vm.provider "virtualbox" do |vb|
      vb.gui = true   
    end
    web.vm.provider "vmware_workstation" do |vmware|
      vmware.gui = true
    end
  end
  
  config.vm.define "net", autostart: false do |net|
    config.vm.network "private_network", ip: "172.16.189.241", :mac => "080027EAD414", :adapter => 2 
    config.vm.synced_folder '.', '/vagrant', disabled: true
    config.vm.guest = :freebsd
    net.vm.box = "cmad/THA-NetEmu"
    net.vm.provider "virtualbox" do |vb|
      vb.gui = true   
    end
    net.vm.provider "vmware_workstation" do |vmware|
      vmware.gui = true
    end
  end

end