#!/bin/bash

## change to source dir
cd "${SRC_DIR}" || exit 1

## compile
${CXX} -c consensify_c.cpp -I./ ${CXXFLAGS}

## link
${CXX} consensify_c.o -o consensify_c -lz ${LDFLAGS}

## install
mkdir -p $PREFIX/bin
cp consensify_c ${PREFIX}/bin/consensify_c
