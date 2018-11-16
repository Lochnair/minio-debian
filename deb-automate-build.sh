#!/bin/bash

#set -x

# This script is an utility to automate the building of the minio package.

sudo apt-get -y --no-install-recommends --no-install-suggests install \
    dpkg-dev debhelper dh-systemd devscripts libwww-perl gnupg2

rm -f ../minio.RELEASE.*
rm -f ./minio
uscan --no-symlink --download-current-version

FILE=`ls -1 ../minio.RELEASE.*Z`
mv $FILE ./minio
chmod 755 ./minio
chown root:root ./minio

dpkg-buildpackage -us -uc -b
debian/rules clean
rm -f minio
