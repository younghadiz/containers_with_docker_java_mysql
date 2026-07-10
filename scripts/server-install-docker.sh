#!/usr/bin/env bash

set -euo pipefail

echo "Updating Ubuntu package index..."
sudo apt update

echo "Installing Docker and required packages..."
sudo apt install -y \
  docker.io \
  docker-compose-v2 \
  git \
  curl \
  vim

echo "Enabling Docker to start automatically..."
sudo systemctl enable docker

echo "Starting Docker service..."
sudo systemctl start docker

echo "Adding deployuser to the docker group..."
sudo usermod -aG docker deployuser

echo "Docker version:"
sudo docker --version

echo "Docker Compose version:"
sudo docker compose version

echo
echo "Docker installation completed successfully."
echo "Log out and reconnect before running Docker without sudo." 