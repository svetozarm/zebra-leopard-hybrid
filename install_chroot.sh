#!/bin/bash

sudo apt-get install dchroot debootstrap

TARGET_DIR=$1

has_trusty=`cat /etc/schroot/schroot.conf | grep "\[trusty\]"`
echo $has_trusty
if [ -z $has_trusty ]
then
    sudo echo "[trusty]" >> /etc/schroot/schroot.conf
    sudo echo "description=Ubuntu Trusty" >> /etc/schroot/schroot.conf
    sudo echo "location=$TARGET_DIR" >> /etc/schroot/schroot.conf
    sudo echo "priority=3" >> /etc/schroot/schroot.conf
    sudo echo "users=svetozar" >> /etc/schroot/schroot.conf
    sudo echo "root-groups=root" >> /etc/schroot/schroot.conf
fi

sudo debootstrap --variant=buildd --arch amd64 trusty $TARGET_DIR http://archive.ubuntu.com/ubuntu/

sudo chroot $TARGET_DIR mkdir -p /home/work
sudo cp install_llvm.sh $TARGET_DIR/home/work
sudo cp install_llvm_3.5.sh $TARGET_DIR/home/work
