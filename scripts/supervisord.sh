#!/usr/bin/env bash

echo ">>> Installing Supervisord"

# Supervisord
# -qq implies -y --force-yes
sudo apt-get install -qq supervisor

cd /etc/supervisor/conf.d

wget https://raw.githubusercontent.com/t3rminalVel0city/Vaprobash/master/seat.conf
