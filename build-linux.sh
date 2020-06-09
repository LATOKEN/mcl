#!/bin/bash

make MCL_USE_GMP=0
g++ -o lib/libmclbn384_256.so obj/bn_c384_256.o obj/fp.o obj/x86-64.o obj/x86-64.bmi2.o -shared -lrt -m64
mkdir lib/linux-x64
cp lib/libmclbn384_256.so lib/linux-x64/
