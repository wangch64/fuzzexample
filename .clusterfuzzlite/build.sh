#!/bin/bash -eu


$CC $CFLAGS \
    $SRC/example/ftest1.c -o $OUT/parse_fuzzer \
    $LIB_FUZZING_ENGINE /usr/lib/libFuzzingEngine.a
