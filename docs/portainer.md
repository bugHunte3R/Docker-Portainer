# Portainer

## Purpose

Portainer provides a web interface for managing the Docker environment.

## Main Uses

- Deploy Docker Compose stacks
- Review running containers
- Inspect logs
- Restart services
- Review volumes
- Review networks
- Inspect environment variables
- Monitor resource consumption

## Security Considerations

Because Portainer can control Docker, it is treated as a privileged administrative service.

Security practices:

- Keep the interface private
- Use strong authentication
- Do not expose it directly to the Internet
- Review access regularly
- Keep Portainer updated
- Back up Portainer data
- Protect access to the Docker socket

## Persistent Data

Portainer configuration is stored in a Docker volume.

Example:

```yaml
volumes:
  portainer-data:
```
