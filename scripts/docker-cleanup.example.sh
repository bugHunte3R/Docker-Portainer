#!/usr/bin/env bash
set -euo pipefail

echo "Review unused resources before cleanup:"
docker system df

echo
echo "Example commands only:"
echo "docker image prune"
echo "docker container prune"
echo "docker network prune"
