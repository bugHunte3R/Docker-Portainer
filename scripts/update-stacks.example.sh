#!/usr/bin/env bash
set -euo pipefail

COMPOSE_DIR="/opt/example-stack"

cd "$COMPOSE_DIR"
docker compose pull
docker compose up -d
docker compose ps
