#!/bin/bash

set -euo pipefail

apt update

apt install -y docker.io docker-compose-plugin git curl vim

systemctl enable docker

systemctl start docker

docker --version

docker compose version 