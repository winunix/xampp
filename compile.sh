#!/bin/bash

if [ ! -f deb_package/tmp/xampp/installer.run ]; then
    wget https://www.apachefriends.org/xampp-files/7.4.7/xampp-linux-x64-7.4.7-0-installer.run -O installer.run
    mv installer.run deb_package/tmp/xampp/
fi
chmod +x deb_package/tmp/xampp/installer.run

dpkg-deb -b deb_package .