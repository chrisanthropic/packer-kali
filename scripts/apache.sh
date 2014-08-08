#!/bin/sh
set -e

# Untar the file Packer uploaded for us
tar zxf /tmp/apache.tar.gz -C /var/www

### Fix /var/www permissions now that Packer has uploaded our files
chmod 755 /var/www
chmod 755 /var