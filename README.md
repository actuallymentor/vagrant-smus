# Vagrant version of my Super Mega Ukulele Server with WordPress

IMPORTANT: this server assumes an empty root passwod for MySQL

Why this server?

- Runs WordPress on LEMH/SMUS server
- Export database into webroot on 'halt'
- Imports databases on 'up' 

To start just:

- git clone this repo
- vagrant plugin install vagrant-triggers
- vagrant up
- run mysql_secure_installation

Useful info:

- The vagrant server uses ubuntu 15.04
- The vagrant server can be accessed through 192.168.33.10
- The www folder (in repo) on the host is linked to the webroot of the vagrant server

# About the setup script for LEMH stack

See the setup script repository: https://github.com/actuallymentor/setup-script-LEMH-stack