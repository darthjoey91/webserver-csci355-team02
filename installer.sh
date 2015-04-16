#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root. Try sudo !!"
  exit
else
    sudo apt-get update
    sudo apt-get install apache2 php5
    sudo apt-get install libapache2-mod-php5
    sudo apt-get upgrade apache2 php5
    sudo a2enmod php5
    sudo service apache2 restart
fi
