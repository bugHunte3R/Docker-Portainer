#!/usr/bin/env bash
set -euo pipefail

BACKUP_DIR="/var/backups/docker-example"
DATE="$(date +%F-%H%M%S)"

mkdir -p "$BACKUP_DIR"

echo "This is a sanitized backup example."
echo "Back up only reviewed volumes and configuration files."
echo "Backup timestamp: $DATE"
