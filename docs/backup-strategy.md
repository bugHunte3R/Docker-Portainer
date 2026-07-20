# Backup Strategy

## Backup Scope

Protect:

- Docker Compose files
- Environment templates
- Portainer data
- Application volumes
- Databases
- Nginx configuration
- Documentation
- Recovery instructions

## Backup Layers

1. Proxmox LXC backup
2. Docker volume backup
3. Database export
4. Application configuration backup
5. External backup copy
6. Restore testing

## Important Principle

A container image is not a backup of application data.

Persistent data and configuration must be backed up independently.

## Excluded from This Repository

- Real backup paths
- Remote destinations
- Credentials
- Encryption keys
- Production databases
- Personal files
