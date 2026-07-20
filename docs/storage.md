# Persistent Storage

## Storage Types

### Docker Named Volumes

Used for application-managed persistent data.

### Bind Mounts

Used when the administrator needs direct access to files from the host.

## Principles

- Do not store important data only inside a container layer
- Back up application data separately
- Review permissions before changing images
- Document which service owns each volume
- Test restoration procedures

## Example Volume Inventory

| Volume | Purpose |
|---|---|
| `portainer-data` | Portainer configuration |
| `portfolio-data` | Application data if required |
| `unifi-data` | UniFi configuration |
| `application-data` | Generic persistent data |

These names are documentation examples.
