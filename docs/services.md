# Hosted Services

## Service Inventory

| Service | Category | Access | Deployment |
|---|---|---|---|
| Portainer | Management | Private | Docker container |
| React Portfolio | Public web | Public through tunnel | Docker Compose |
| UniFi Network Application | Network management | Private | Docker container |
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

## UniFi Network Application

The UniFi service uses persistent storage for configuration and application data.

Its administrative interface remains private.

## Portainer

Portainer manages the local Docker environment.

Because it has administrative access to Docker, it is not treated as a normal public application.

## Additional Services

Additional services may be added for testing, infrastructure management or personal projects.

Exact names and endpoints are excluded from public documentation.
