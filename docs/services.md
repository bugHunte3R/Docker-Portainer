# Hosted Services

## Service Inventory

| Service | Category | Access | Deployment |
|---|---|---|---|
| Portainer | Management | Private | Docker container |
| React Portfolio | Public web | Public through tunnel | Docker Compose |
| InvoiceShelf + PostgreSQL | Invoicing | Private | Docker Compose, named volume, health checks |
| Additional Web Services | Applications | Selected | Docker Compose |

## React Portfolio

The portfolio uses a multi-stage build.

```text
Node.js build image
        |
        v
React production build
        |
        v
Nginx runtime image
```

## InvoiceShelf

Invoicing application with a dedicated PostgreSQL container on its own Compose network. Database data lives in a named volume; both containers have health checks.

Its interface remains private.

## Contact API

The portfolio contact form API (Node.js / Express) runs as a systemd service on the host and is reached only through the portfolio Nginx `/api/` location.

## Network controller

The UniFi OS Server is deliberately **not** on this Docker host: it runs in its own LXC so it can be backed up and upgraded independently.

## Portainer

Portainer manages the local Docker environment.

Because it has administrative access to Docker, it is not treated as a normal public application.

## Additional Services

Additional services may be added for testing, infrastructure management or personal projects.

Exact names and endpoints are excluded from public documentation.
