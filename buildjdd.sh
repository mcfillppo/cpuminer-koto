#!/bin/bash
# Linux build

make distclean || echo clean

rm -f config.status
./autogen.sh || echo done

CFLAGS="-O3 -march=native -Wall" ./configure --with-curl --with-crypto=$HOME/usr

make -j $(nproc)

strip -s cpuminer
