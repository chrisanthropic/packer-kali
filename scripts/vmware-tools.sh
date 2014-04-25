apt-get -y install open-vm-toolbox

## These steps/patches are provided by the Kali team @ https://github.com/offensive-security/kali-vmware-tools-patches
#apt-get install linux-headers-$(uname -r)
#sed -i '/cups\ disabled/d' /usr/sbin/update-rc.d 
#echo cups enabled >> /usr/sbin/update-rc.d 
#echo vmware-tools-thinprint enabled >> /usr/sbin/update-rc.d

## Configure Git before we do the next steps
#git config --global user.name
#git config --global user.email

## Grab the vmware-tools patches
#git clone https://github.com/offensive-security/vmware-tools-patches

## Grab 
#cd vmware-tools-patches
#cp VMwareTools-9.6.1-1378637.tar.gz vmware-tools-patches/

## Now we will apply the patches and build vmware-tools
#cd vmware-tools-patches
#export VMWARE_TOOLS_PATCHES_DEBUG=1
#./untar-all-and-patch.sh
#cd vmware-tools-distrib
#sed -i "s/'RUN_CONFIGURATOR', 'yesno', 'yes');/, 'RUN_CONFIGURATOR', 'yesno', 'no');/" vmware-install.pl 
#./vmware-install.pl -d
#cd ..
#patch -p0 < patches/vmware-tools.patch 
#vmware-config-tools.pl -d

## Now lets remove the Git remnants
#rm ~/.gitconfig
#rm -rf ~/vmware-tools-patches