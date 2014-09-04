#!/bin/sh
set -ex

sudo su

# Start postgres service
service postgresql start

# Start metasploit to create your default postgres user
service metasploit start

# Start msfconsole to create some default files
#msfconsole
#exit

# Tell it to use our database.yml config by creating /root/.msf4/msfconsole.rc
#mkdir -p /root/.msf4
#cat >>/root/.msf4/msfconsole.rc <<EOL
#
#db_connect  -y /opt/metasploit/apps/pro/ui/config/database.yml
#set ConsoleLogging true
#set LogLevel 5
#set SessionLogging true
#set TimestampOutput true
#spool /root/metasploit.spool.txt
#set PROMPT '%U@%H(%L) :'
#EOL

# Update the password in /opt/metasploit/apps/pro/ui/config/database.yml
cat >/opt/metasploit/apps/pro/ui/config/database.yml <<EOL
# This is the full content of the file
development:
  adapter: "postgresql"
  database: "msf3"
  username: "msf3"
  password: "root"
  port: 5432
  host: "localhost"
  pool: 256
  timeout: 5

production:
  adapter: "postgresql"
  database: "msf3"
  username: "msf3"
  password: "root"
  port: 5432
  host: "localhost"
  pool: 256
  timeout: 5
EOL

# Update the password in /opt/metasploit/properties.ini
cat >/opt/metasploit/properties.ini <<EOL
[General]
base_stack_name=Metasploit
base_stack_version=4.9.3-2014072301-1kali0
installdir=/opt/metasploit

[Postgres]
postgres_port=5432
rapid7_database_password=root
rapid7_database_user=msf3
rapid7_database_name=msf3
dpkg_created_database_user=yes
dpkg_created_database=yes

[NginX]
nginx_ssl_days=3650
nginx_ssl_name=packer-virtualbox-iso
nginx_ssl_port=3790
EOL

# Reset defualt postgresql password for msf3:
#sudo -u postgres psql
#\password msf3
#root
#root
#\q
sudo -u postgres psql -c "ALTER USER msf3 WITH PASSWORD 'root';"