#!/bin/bash -ex

if [ -d cpp-coveralls ]; then
    rm -rf cpp-coveralls/*
else
    mkdir cpp-coveralls
fi

cd cpp-coveralls

pip download cpp-coveralls --no-cache-dir --no-binary :all
