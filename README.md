packer-kali
===========
Packer stuff to build Kali 1.0.7

## Requirements
* Packer
* Vagrant
* Virtualbox and/or VMware

## About the Boxes
We start with a Kali 1.0.7 x64 base .iso and run a few scripts on it before creating a vagrant compatible .box for Virtualbox and/or VMware.

#### Kali linux 1.0.7
 - Full dist-upgrade.
 - Installs virtualbox guest additions / vmware-tools.
 - apt-get installation of 'chef' for provisioning.
 - Root password changed to: THAconf1g?
 - User 'vagrant' is created with password 'vagrant' and added to user group 'admin'.
 - Enables passwordless sudo for user group 'admin'.
 - Authorized keys for 'vagrant' user are stored in the ~/.ssh directory.
 - Enables rpcbind, nfs-common and ssh services at boot.
 - Modifies /etc/issue for vagrant/vmware OS detection.
 
## Use
##### Packer #####
Create the box you want (either virtualbox or vmware)

 - git clone https://github.com/ctarwater/packer-kali.git
 - cd packer-kali
   - virtualbox: packer build -only=virtualbox-iso clean-kali.json
   - vmware: packer build -only=vmware-iso clean-kali.json 
 
##### Vagrant #####
Add the box you just created and then run the Vagrantfile we provided

 - vagrant box add Kali-1.0.7 /path/to/vm.box
 - cd to /packer-kali
   - virtualbox: vagrant up --provider=virtualbox
   - vmware: vagrant up --provider=vmware_desktop
