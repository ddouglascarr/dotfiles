#!/bin/bash
set -euo pipefail

sudo apt install python3-pip

pip3 install virtualenvwrapper

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.6
