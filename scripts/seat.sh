#!/usr/bin/env bash

echo ">>> Installing SeAT";

# use git to pull down seat
git clone https://github.com/eve-seat/seat.git -b dev /vagrant/seat-dev

cd /vagrant/seat-dev/

composer install
curl https://raw.githubusercontent.com/downslope7/vagrant-seat/master/.env.php > .env.php

php artisan migrate
php artisan db:seed
php artisan seat:update-sde --confirm
php artisan seat:groupsync
php artisan key:generate
touch .installed.lck
