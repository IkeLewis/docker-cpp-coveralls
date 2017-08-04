#!/bin/bash -ex

mkdir /cpp-coveralls-download
cd /cpp-coveralls-download

set +e

# Try to download the source files with pip.
pip download cpp-coveralls --no-cache-dir --no-binary :all

set -e

# If that fails or we're doing an offline install, 
if [[ $? -ne 0 || $INSTALL_TYPE == "OFFLINE" ]]; then

    # try to use files from the build context.
    cd /cpp-coveralls-bc

fi

# Extract the files.
tar -xf cpp-coveralls*.tar.gz
rm -rf cpp-coveralls*.tar.gz

pip install --no-index -e cpp-coveralls* --find-links \
cpp-coveralls-* --find-links .
