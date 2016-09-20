#!/bin/bash

# turn on option to exit on non-zero return code.
set -e
# turn on verbose option, which echos commands to stdout
set -v

# cd to top of extension directory.
cd ../

#
# Build: building the artifact
#
cd artifact
pwd
./build.sh --clean
cd ../

#
# MDA: run modular determinsim analysis
#
cd modular_analyses/determinism
pwd
./run.sh --clean
cd ../../

#
# MWDA: run modular well-definedess analysis
#
cd modular_analyses/well_definedness
pwd
./run.sh --clean
cd ../../

# this currently 'works' but reports errors and thus fails
cd examples
pwd
./compile.sh skeleton.xc

./a.out

cd ../
pwd

set +v

