#!/bin/bash

#set -x

# This script is an utility to automate the building of the minio package.

sudo apt-get -y install dpkg-dev debhelper dh-systemd devscripts libwww-perl

rm -f ../minio.RELEASE.*
rm -f ./minio
uscan --debug -v --no-symlink --download-current-version

FILE=`ls -1 ../minio.RELEASE.*Z`
mv $FILE ./minio
chmod 755 ./minio
chown root:root ./minio

#dpkg-buildpackage -us -uc -b
debian/rules clean
