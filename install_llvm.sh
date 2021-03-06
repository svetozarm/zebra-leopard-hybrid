#!/bin/bash

apt-get install python m4 autoconf automake libtool subversion cmake

cd /home/work
svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm

cd llvm/tools
svn co http://llvm.org/svn/llvm-project/cfe/trunk clang
cd ../../

cd llvm/tools/clang/tools
svn co http://llvm.org/svn/llvm-project/clang-tools-extra/trunk extra
cd ../../../..

cd llvm/projects
svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt
cd ../..

mkdir build
cd build
cmake -G "Unix Makefiles" ../llvm
make

echo export PATH=\$PATH:/home/work/build/bin >> /root/.bashrc
echo export LLVM_BUILD=/home/work/build >> /root/.bashrc
echo export LLVM_SOURCE=/home/work/llvm-3.5.0.src/ >> /root/.bashrc

