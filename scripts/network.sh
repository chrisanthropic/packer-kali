#!/bin/sh
set -e

# Making sure our private/internal network works with our vagrantscript for both vmware and virtualbox
# VMware doesn't want the info in /etc/network/interfaces, virtualbox does.

# Test for VMware
# When launcing the VM for the first time VMware will create the VMnet but eth1 doesn't get an ip until restarting the interface
# We do this at every boot simply to make shit work right the first time a user loads the VM.

cat >>/etc/hosts <<EOL
127.0.1.1	bt.foo.org	bt
172.16.189.100	csrf.tha	csrf
172.16.189.100	flash.tha	flash
172.16.189.100	xss.tha		xss
172.16.189.100	drupal6.tha	drupal6
172.16.189.100	joomla15.tha	joomla15
172.16.189.100	joomla10.tha	joomla10
172.16.189.100	mail.tha	mail
172.16.189.100	webbrute.tha	webbrute
172.16.189.100	sqli.tha	sqli
EOL


if test -f linux.iso ; then
cat >>/etc/rc.local <<EOL
sleep 2
ifconfig eth1 down
ifconfig eth1 up
EOL

# Test for Virtualbox
elif test -f .vbox_version ; then
echo "Nothing to see here, move along"

fi