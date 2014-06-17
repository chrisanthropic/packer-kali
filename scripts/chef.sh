# Change our debian version because Kali's default doesn't work with the Omnibus installer
echo "7.4" > /etc/debian_version

# install Omnibus Chef Client
wget -O - http://opscode.com/chef/install.sh | sudo bash -s

# Change our debian version back so we don't break shit with Kali
echo "Kali Linux 1.0.7" > /etc/debian_version