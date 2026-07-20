# Security

## Core Principles

1. Do not commit secrets.
2. Keep Portainer private.
3. Expose only necessary ports.
4. Use Docker networks for logical separation.
5. Keep images and the host updated.
6. Back up persistent data.
7. Review container logs.
8. Sanitize screenshots and documentation.
9. Avoid publishing exact internal architecture details.
10. Use example configurations instead of production files.

## Never Publish

- `.env` files
- API keys
- SMTP credentials
- Cloudflare tokens
- Database passwords
- Docker registry credentials
- Portainer passwords
- Real domains
- Real IP addresses
- Docker socket configuration details
- Backup destinations
- Personal files
- Browser cookies
- QR codes
- Full Portainer exports

## Docker Socket

Access to `/var/run/docker.sock` provides powerful control over Docker.

Only trusted management containers should receive access to it.

## Screenshot Checklist

Hide:

- IP addresses
- Hostnames
- Domains
- Email addresses
- Container IDs
- Volume paths
- Environment variables
- MAC addresses
- Tokens
- Usernames
- Notifications
