# minio-debian

Minio is a distributed object storage server, written in Go
and open sourced under Apache License Version 2.0

This repository aims at providing who needs it a way to download minio from the official repository and package it into a nice deb file.

If you're looking for a minio debian package, this is the proper place!

## Short DEB-packaging HowTo

1. Simply run the following script included in the repository

```deb-automate-build.sh```

## Installing the Minio debian packages

After the build is completed, it's as simple as:

```dpkg -i ../minio*.deb```


