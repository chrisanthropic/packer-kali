# These assets are placed in the webroot for use with our THA Cross-site scripting lab

#!/bin/sh
set -e

# Untar the file Packer uploaded for us
tar zxf /tmp/apache.tar.gz -C /var/www

### Fix /var/www permissions now that Packer has uploaded our files
chmod 755 /var/www
chmod 755 /var
chown -R root:root /var/www
chown www-data:www-data /var/www/8572.c
chown -R www-data:www-data /var/www/beef