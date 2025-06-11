#!/usr/bin/env bash

apt-get -y update && apt-get -y upgrade
wget https://cvmrepo.s3.cern.ch/cvmrepo/apt/cvmfs-release-latest_all.deb
dpkg -i cvmfs-release-latest_all.deb
rm -f cvmfs-release-latest_all.deb
apt-get -y update
apt-get -y install cvmfs cvmfs-server
mkfs.ext4 -F /dev/xvdf
mkdir -p /var/spool/cvmfs
echo "UUID=$(blkid -s UUID -o value /dev/xvdf) /var/spool/cvmfs ext4 defaults,nofail 0 2" >> /etc/fstab
mount -a
cvmfs_server mkfs -o ubuntu my.repo.name

