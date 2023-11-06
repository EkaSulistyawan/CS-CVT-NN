#!/bin/sh

export FFTW=/home/opt/fftw-2.1.5 \
&& export FDCT=/home/opt/CurveLab-2.1.3 \
&& python3 -m pip install git+https://github.com/PyLops/curvelops@0.23