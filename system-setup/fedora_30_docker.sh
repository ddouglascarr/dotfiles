#!/usr/bin/env bash
set -euo pipefail

echo "--- Removing podman docker shim"
sudo dnf remove -y podman-docker podman-compose

echo "--- Adding Docker CE repository"
sudo dnf config-manager addrepo --from-repofile https://download.docker.com/linux/fedora/docker-ce.repo

echo "--- Installing Docker"
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "--- Starting Docker"
sudo systemctl enable --now docker

echo "--- Adding user to docker group"
sudo usermod -aG docker "${USER}"
