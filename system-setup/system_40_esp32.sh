#!/bin/bash
set -euo pipefail

################################################################################
#
# Setup espressif esp-32 toolchain
#
# https://docs.espressif.com/projects/esp-idf/en/latest/get-started/linux-setup.html
#
# After running this:
#   - Create a python2 virtualenv
#   - source `dotfile/bin/set-esp-env` in the postactivate
#   - pip install esp-idf requirements
#
################################################################################

TOOLCHAIN_DIR=~/src/esp
sudo apt update && sudo apt install -y libncurses5-dev bison gperf

cd "${HOME}/Downloads"
wget https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz

mkdir -p ${TOOLCHAIN_DIR}
cd ${TOOLCHAIN_DIR}
tar -xzf "$HOME/Downloads/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz"

# user needs to be added to the dialout group to write to write to /dev/USB*
sudo usermod -a -G dialout $USER

cd ${TOOLCHAIN_DIR}
git clone --recursive https://github.com/espressif/esp-idf.git
cd esp-idf

