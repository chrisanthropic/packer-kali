# Install Ruby from packages
apt-get -y install ruby ruby-dev libruby1.8 ri

# Fix Dradis issue
cd /usr/lib/dradis/server
bundle install

