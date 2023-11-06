#!/bin/sh

tar xvzf CurveLab-2.1.3.tar.gz CurveLab-2.1.3
# overwrite the makefile opt
mv makefile.opt ./CurveLab-2.1.3/makefile.opt
mkdir -p /home/opt/
mv CurveLab-2.1.3/ /home/opt/
cd /home/opt/CurveLab-2.1.3/
cp makefile.opt makefile.opt.bak
make lib