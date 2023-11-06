#!/bin/sh

tar xvzf fftw-2.1.5.tar.gz fftw-2.1.5
mkdir -p /home/opt/
mv fftw-2.1.5/ /home/opt/
cd /home/opt/fftw-2.1.5/
./configure --with-pic --prefix=/home/opt/fftw-2.1.5 --with-gcc=/usr/bin/gcc
make
make install