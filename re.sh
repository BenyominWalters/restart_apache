#!/bin/bash
CONFIG="$1"
COMMAND="$2"

if [ $# -ne 2]
then
  echo "Usage: $0 {virtual-host} {restart|reload}"
  echo "Reloads a target virtual host"
  exit 1
fi

# Disable all virtual host configurations
sudo a2dissite "$CONFIG"
sudo service apache2 restart "$COMMAND"

# Enable all virtual host configuration
sudo a2ensite "$CONFIG"
sudo service apache2 restart "$COMMAND"
