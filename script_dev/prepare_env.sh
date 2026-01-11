#!/bin/bash
# Script to prepare the environment for development
sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl php-cli php-mbstring php-xml php-curl php-zip unzip
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
composer global require symfony/console
export PATH="$HOME/.composer/vendor/bin:$PATH"
composer install --no-interaction