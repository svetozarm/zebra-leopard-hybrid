zebra-leopard-hybrid
====================

it has legs, but does it have a brain?

## Links

Clang build tutorial:

http://clang.llvm.org/get_started.html

Sumner's LLVM project:

http://www.cs.sfu.ca/~wsumner/teaching/880-14/project2.html

GCC Build instructions:

https://solarianprogrammer.com/2012/04/13/building-gcc-4-7-on-ubuntu-12-04/

My build:
```
export LD_LIBRARY_PATH=/usr/gcc-4.7/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/
export C_INCLUDE_PATH=/usr/include/x86_64-linux-gnu
export CPLUS_INCLUDE_PATH=/usr/include/x86_64-linux-gnu
../gcc-4.7.0/configure --build=x86_64-linux-gnu --prefix=/usr/gcc-4.7 --with-gmp=/usr/gcc-4.7 --with-mpfr=/usr/gcc-4.7 --with-mpc=/usr/gcc-4.7 --enable-checking=release --enable-languages=c,c++,fortran --disable-multilib
make
sudo ln -s /usr/lib/x86_64-linux-gnu /usr/lib64
sudo make install
```
