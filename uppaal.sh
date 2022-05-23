#!/bin/bash

export RRCL=$PWD

echo 1 > uppaal-cpp/mode.txt

./uppaal-stratego/bin/verifyta "$@"
