# Troubleshooting

## Container Does Not Start

Check:

```bash
docker ps -a
docker logs CONTAINER_NAME
docker inspect CONTAINER_NAME
```

Possible causes:

- Missing environment variables
- Port conflict
- Invalid volume permissions
- Invalid Compose syntax
- Missing image
- Failed dependency

## Application Still Shows Old Content

Check:

- Source files
- Docker build context
- Image build date
- Running image
- Container recreation
- Browser cache
- Proxy cache
- Tunnel routing

## Port Conflict

```bash
ss -tulpn
docker ps --format 'table {{.Names}}\t{{.Ports}}'
```

## Volume Permission Problem

Check:

- Host path permissions
- Container user
- UID and GID
- Read-only mounts
- SELinux or AppArmor restrictions when applicable

## Docker Disk Usage

```bash
docker system df
docker image ls
docker volume ls
```

Remove unused resources only after confirming they are not required.
