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
Node.js runtime image (Express)
```

## InvoiceShelf

Invoicing application with a dedicated PostgreSQL container on its own Compose network. Database data lives in a named volume; both containers have health checks.

Its interface remains private.

## Portfolio API

The portfolio container runs Express, which serves the React build, the rate-limited contact form API and the admin API used to manage projects.

## Network controller

The UniFi OS Server is deliberately **not** on this Docker host: it runs in its own LXC so it can be backed up and upgraded independently.

## Portainer

Portainer manages the local Docker environment.

Because it has administrative access to Docker, it is not treated as a normal public application.

## Additional Services

Additional services may be added for testing, infrastructure management or personal projects.

Exact names and endpoints are excluded from public documentation.
