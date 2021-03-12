#!/bin/bash
set -euo pipefail

pip install virtualenvwrapper

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.6
