#!/bin/bash

sudo apt-get install dchroot debootstrap

TARGET_DIR=$1

sudo echo "[trusty]" >> /etc/schroot/schroot.conf
sudo echo "description=Ubuntu Trusty" >> /etc/schroot/schroot.conf
sudo echo "location=$TARGET_DIR" >> /etc/schroot/schroot.conf
sudo echo "priority=3" >> /etc/schroot/schroot.conf
sudo echo "users=svetozar" >> /etc/schroot/schroot.conf
sudo echo "root-groups=root" >> /etc/schroot/schroot.conf

sudo debootstrap --variant=buildd --arch amd64 trusty $TARGET_DIR http://archive.ubuntu.com/ubuntu/

sudo chroot $TARGET_DIR mkdir -p /work
sudo cp install_llvm.sh $TARGET_DIR/work
