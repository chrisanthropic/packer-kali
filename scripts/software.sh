# Install Gooscan
wget http://dl.dropbox.com/u/10761700/gooscan.tar.bz2
bzip2 -cd gooscan.tar.bz2 | tar xf -
mv gooscan /usr/share/gooscan
cd /usr/share/gooscan
gcc -Wall -o gooscan gooscan.c
