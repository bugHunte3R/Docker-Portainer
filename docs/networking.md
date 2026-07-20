# Networking

## Docker Networks

Logical networks can be separated by purpose:

- `management-network`
- `web-network`
- `internal-network`
- `database-network`

## Principles

- Expose only required ports
- Keep databases private
- Keep Portainer private
- Use internal Docker DNS between containers
- Avoid using the host network unless required
- Route public HTTP services through a secure tunnel
- Document service dependencies

## Example

```yaml
networks:
  web-network:
    driver: bridge

  internal-network:
    driver: bridge
    internal: true
```

## Documentation Addresses

```text
Docker host: 192.0.2.20
Example public hostname: application.example.com
```

These values are placeholders only.
