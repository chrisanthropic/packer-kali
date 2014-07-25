#!/bin/sh
set -e

# Making sure our private/internal network works with our vagrantscript for both vmware and virtualbox
# VMware doesn't want the info in /etc/network/interfaces, virtualbox does.

if test -f linux.iso ; then
echo "nothing to see here"


elif test -f .vbox_version ; then
cat >>/etc/network/interfaces <<EOL
auto eth1
iface eth1 inet static
	address 172.16.189.5
	netmask 255.255.0.0
        hwaddress ether 08:00:27:f3:4a:5d
EOL

fi