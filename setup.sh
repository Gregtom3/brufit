#!/bin/bash
echo "setenv BRUFIT $PWD" >> ~/.cshrc
echo "alias brufit root \$BRUFIT/macros/LoadBru.C" >> ~/.cshrc
source ~/.cshrc
mkdir build
cd build
cmake -D CMAKE_CXX_COMPILER "/apps/gcc/9.2.0/bin/gcc" ..
make -j 4 install
cmake ../
make -j 4 install
cd ../
