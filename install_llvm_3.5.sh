#!/bin/bash

apt-get install python m4 autoconf automake libtool subversion cmake wget

cd /home/work
wget http://llvm.org/releases/3.5.0/llvm-3.5.0.src.tar.xz
tar xf llvm-3.5.0.src.tar.xz
rm llvm-3.5.0.src.tar.xz

cd llvm-3.5.0.src/tools
wget http://llvm.org/releases/3.5.0/cfe-3.5.0.src.tar.xz
tar xf cfe-3.5.0.src.tar.xz
rm cfe-3.5.0.src.tar.xz
mv cfe-3.5.0.src clang
cd ../../

cd llvm-3.5.0.src/tools/clang/tools
wget http://llvm.org/releases/3.5.0/clang-tools-extra-3.5.0.src.tar.xz
tar xf clang-tools-extra-3.5.0.src.tar.xz
rm clang-tools-extra-3.5.0.src.tar.xz
mv clang-tools-extra-3.5.0.src extra
cd ../../../..

cd llvm-3.5.0.src/projects
wget http://llvm.org/releases/3.5.0/compiler-rt-3.5.0.src.tar.xz
tar xf compiler-rt-3.5.0.src.tar.xz
rm compiler-rt-3.5.0.src.tar.xz
mv compiler-rt-3.5.0.src compiler-rt
cd ../..

cd llvm-3.5.0.src/
./configure
make -j4
#mkdir build
#cd build
#cmake -G "Unix Makefiles" ../llvm-3.5.0.src
#make -j4

mkdir /home/$SUDO_USER
echo export PATH=\$PATH:/home/work/llvm-3.5.0.src/Release+Asserts/bin >> /home/$SUDO_USER/.bashrc
echo export LLVM_BUILD=/home/work/llvm-3.5.0.src/Release+Asserts >> /home/$SUDO_USER/.bashrc
echo export LLVM_SOURCE=/home/work/llvm-3.5.0.src/ >> /home/$SUDO_USER/.bashrc
