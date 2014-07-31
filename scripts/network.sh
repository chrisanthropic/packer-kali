#!/bin/sh
set -e

# Making sure our private/internal network works with our vagrantscript for both vmware and virtualbox
# VMware doesn't want the info in /etc/network/interfaces, virtualbox does.

# Test for VMware
# When launcing the VM for the first time VMware will create the VMnet but eth1 doesn't get an ip until restarting the interface
# We do this at every boot simply to make shit work right the first time a user loads the VM.

if test -f linux.iso ; then
cat >>/etc/rc.local <<EOL
sleep 2
ifconfig eth1 down
ifconfig eth1 up
EOL

# Test for Virtualbox
elif test -f .vbox_version ; then
cat >>/etc/network/interfaces <<EOL
auto eth1
iface eth1 inet static
	address 172.16.189.5
	netmask 255.255.0.0
        hwaddress ether 08:00:27:f3:4a:5d
EOL

fi