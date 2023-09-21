#!/bin/bash -eu


$CXX $CXXFLAGS -std=c++11 -Ilib/ \
    $SRC/example/main.cpp -o $OUT/parse_fuzzer

