#!/bin/bash

export LD_LIBRARY_PATH=
./configure --prefix=$PREFIX --with-cuda=/usr/local/cuda/ \
    --with-threads=posix --with-slurm --with-pmi \
    --with-pmi-libdir=/usr/lib/x86_64-linux-gnu \
    --disable-silent-rules --with-hwloc=/usr \
    --disable-mca-dso --with-devel-headers --with-sge \
    --enable-heterogeneous --disable-vt \
    --with-wrapper-ldflags="-Wl,-rpath -Wl,/usr/lib/x86_64-linux-gnu"
make -j $CPU_COUNT
make install
