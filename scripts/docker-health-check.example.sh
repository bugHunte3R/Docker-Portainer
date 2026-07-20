#!/usr/bin/env bash
set -euo pipefail

echo "=== Docker service ==="
systemctl is-active docker

echo
echo "=== Containers ==="
docker ps

echo
echo "=== Disk usage ==="
docker system df
