#!/usr/bin/env bash

set -ex

cmake -GNinja -S . -B build\
 -DCMAKE_INSTALL_PREFIX="$CONDA_PREFIX"\
 -DDISABLE_DEPRECATION_WARNING=ON\
 -DBUILD_TESTS=ON\
 -DBUILD_BENCHMARKS=ON\
 -DPER_THREAD_DEFAULT_STREAM=ON
