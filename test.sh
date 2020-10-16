#!/bin/bash

tar -xzf python36.tar.gz
tar -xzf packages.tar.gz
tar -xzf scripts.tar.gz

export PATH=$PWD/python/bin:$PATH

mkdir packages
python3 -m pip3 install --target=$PWD/packages numpy scipy.io

export PYTHONPATH=$PWD/packages
export HOME=$PWD

python3 $PWD/scripts/DiBiC-master/BinaryToJSON.py $PWD/scripts/DiBiC-master/TestDir/Test1/Data $PWD/scripts/TestDir/Test1/message_defs.mat

