#!/bin/sh
set -e
grep -qxF 'set bell-style none' ~/.inputrc || echo 'set bell-style none'>> ~/.inputrc
#
sudo dnf update -y
sudo dnf install epel-release -y
sudo dnf update -y
#
sudo dnf group install "Development Tools" -y
#
sudo yum module enable perl:5.26 -y
sudo dnf install wget curl -y
sudo dnf install libzstd -y
sudo dnf install tig htop mc nano screen ncdu tigervnc-server -y
sudo dnf install transmission telnet -y
sudo dnf install python3 python2 -y
sudo alternatives --set python /usr/bin/python3

#
# for man pages to look nicer
# this package is not yet available in CentOS 8 but can be installed on CentOS via yum
# sudo dnf install most -y
