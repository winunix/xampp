#!/bin/bash

if [ ! -f xampp-installer.run ]; then
    wget https://www.apachefriends.org/xampp-files/7.4.7/xampp-linux-x64-7.4.7-0-installer.run -O xampp-installer.run
    split -b 77M -a 1 xampp-installer.run "xampp-installer."
    mkdir -p deb_pkg1/tmp/
    mv xampp-installer.a deb_pkg1/tmp/
    mkdir -p deb_pkg2/tmp/
    mv xampp-installer.b deb_pkg2/tmp/
fi

dpkg-deb -b deb_pkg1 .
dpkg-deb -b deb_pkg2 .