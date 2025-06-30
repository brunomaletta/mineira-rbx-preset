#!/bin/bash

# Install BOCA

sudo apt-get update # Updating packages
sudo add-apt-repository ppa:icpc-latam/maratona-linux # Adding the official package of BOCA
sudo apt-get update # Updating packages, again
sudo apt-get install boca pipx maratona-linguagens -y # Installing BOCA and other stuff

# Create jail
sudo boca-createjail

# Install rbx
pipx ensurepath
pipx install rbx.cp

source ~/.bashrc

# Patch php.ini
sudo sed -i 's/upload_max_filesize = .*/upload_max_filesize = 200M/' /etc/php/8.1/fpm/php.ini
sudo sed -i 's/post_max_size = .*/post_max_size = 200M/' /etc/php/8.1/fpm/php.ini
sudo sed -i 's/memory_limit = .*/memory_limit = 256M/' /etc/php/8.1/fpm/php.ini

# Patch globals.php
sudo sed -i -E 's/\((\$secure && !is_link\(\$dir\))\)/(\1 \&\& is_file($dir))/' /var/www/boca/src/globals.php

# Restart php
sudo service php8.1-fpm restart