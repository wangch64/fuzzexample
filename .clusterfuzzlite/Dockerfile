FROM gcr.io/oss-fuzz-base/base-builder:v1       # Base image with clang toolchain
COPY . $SRC/example                     # Copy your project's source code.
WORKDIR $SRC/example                     # Working directory for build.sh.
COPY ./.clusterfuzzlite/build.sh $SRC/           # Copy build.sh into $SRC dir.

