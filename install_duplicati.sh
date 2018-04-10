#!/bin/bash

set -ev

sudo apt-get update
wget https://updates.duplicati.com/beta/duplicati_2.0.3.3-1_all.deb
sudo dpkg -i duplicati_2.0.3.3-1_all.deb
sudo apt --fix-broken install
rm -rf duplicati_2.0.3.3-1_all.deb
