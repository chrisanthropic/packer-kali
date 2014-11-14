packer-kali
===========
A Kali 1.0.9a build for Packer

## Requirements
* Packer
* Vagrant
* Virtualbox and/or VMware

## About the Boxes
We start with a Kali 1.0.9a x64 base .iso and run a few scripts on it before creating a vagrant compatible .box for Virtualbox and/or VMware.

Final box available on Vagrantcloud at: https://vagrantcloud.com/cmad/

#### Kali linux 1.0.9a
 - apt-get update/upgrade on November 13 2014.
 - Installs virtualbox guest additions / vmware-tools.
 - apt-get installation of 'chef' for provisioning.
 - Root password: `toor`
 - User `vagrant` is created with password `vagrant` and added to user group `admin`.
 - Enables passwordless sudo for user group `admin`.
 - Authorized keys for `vagrant` user are stored in the `~/.ssh` directory.
 - Enables rpcbind, nfs-common and ssh services at boot.
 - Modifies /etc/issue for vagrant/vmware OS detection.
 - eth1 assigned a static ip of 172.16.189.5
 
## Use
##### Packer #####
Create the box you want (either virtualbox or vmware)

 - git clone https://github.com/ctarwater/packer-kali.git
 - cd packer-kali
   - virtualbox: packer build -only=virtualbox-iso kali.json
   - vmware: packer build -only=vmware-iso kali.json 
 
##### Vagrant #####
Add the box you just created and then grab the Vagrantfile from [here](https://raw.githubusercontent.com/madsec/vagrant-vms/master/Vagrantfile).

 - vagrant box add Kali /path/to/vm.box
 - cd to /packer-kali
   - virtualbox: vagrant up --provider=virtualbox
   - vmware: vagrant up --provider=vmware_desktop
