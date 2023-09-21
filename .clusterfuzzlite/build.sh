#!/bin/bash -eu

$CXX $CXXFLAGS -std=c++11 -Ilib/ \
    $SRC/example/main.cpp -o $OUT/ex1 \
    $LIB_FUZZING_ENGINE /usr/lib/libFuzzingEngine.a
