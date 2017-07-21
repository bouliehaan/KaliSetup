#!/bin/sh

sudo su

echo deb http://http.kali.org/kali kali-rolling main contrib non-free >> $

apt-get update
apt-get -y dist-upgrade

apt-get -y install terminator
apt-get -y install git
apt-get -y install tor
apt-get -y install virtualbox

git clone https://github.com/bouliehaan/torinstall
cd torinstall
chmod +x installtor.sh
./installtor.sh

cd ~/
rm torinstall
