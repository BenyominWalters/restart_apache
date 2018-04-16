#!/bin/bash

# Move the current execution state to the proper directory
cd /etc/apache2/sites-available

# Disable all virtual host configurations
sudo a2dissite *
sudo service apache2 restart

# Enable all virtual host configuration
sudo a2ensite *
sudo service apache2 restart
