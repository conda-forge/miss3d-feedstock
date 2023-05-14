#!/bin/bash
set -e

echo "**************** M I S S 3 D  B U I L D  S T A R T S  H E R E ****************"

cp src/Makefile.inc.gnu64 src/Makefile.inc

make prefix=$PREFIX/bin
make install

echo "**************** M I S S 3 D  B U I L D  E N D S  H E R E ****************"