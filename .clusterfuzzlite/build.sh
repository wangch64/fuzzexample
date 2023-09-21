#!/bin/bash -eu


$CXX $CXXFLAGS -std=c++11 -Ilib/ \
    $SRC/example/main.cpp -o $OUT/parse_fuzzer \
    $LIB_FUZZING_ENGINE .libs/libexpat.a

