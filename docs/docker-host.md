# Docker Host

## Platform

The Docker host runs Debian Linux inside a dedicated LXC container hosted on Proxmox VE.

## Responsibilities

- Run Docker Engine
- Run Docker Compose stacks
- Host Portainer
- Store persistent application data
- Provide container networking
- Centralize application logs
- Support public and private services

## Administrative Commands

```bash
systemctl status docker
docker version
docker info
docker ps
docker images
docker network ls
docker volume ls
```

## Design Principles

- Keep the base system minimal
- Install only required packages
- Use restart policies
- Store secrets outside Git
- Keep application data persistent
- Document service dependencies
- Review disk usage regularly
