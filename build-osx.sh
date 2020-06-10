#!/bin/bash

make MCL_USE_GMP=0
c++ -o lib/libmclbn384_256.dylib obj/bn_c384_256.o obj/fp.o obj/x86-64.o obj/x86-64.bmi2.o -shared -m64  
mkdir lib/osx-x64
cp lib/libmclbn384_256.dylib lib/osx-x64/
