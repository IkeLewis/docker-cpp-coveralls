#!/bin/bash -ex

apt-get update
apt-get upgrade -y
apt-get install -y python python-pip

mkdir /cpp-coveralls-download
cd /cpp-coveralls-download

set +e

# Try to download the source files with pip.
pip download cpp-coveralls --no-cache-dir --no-binary :all

set -e

# If that fails, then
if [ $? -ne 0 || $INSTALL_TYPE="OFFLINE" ]; then

    # try to use files from the build context.
    cd /cpp-coveralls-bc

fi

# Extract the files.
tar -xf cpp-coveralls*.tar.gz
rm -rf cpp-coveralls*.tar.gz

pip install --no-index -e cpp-coveralls* --find-links \
cpp-coveralls-* --find-links .
