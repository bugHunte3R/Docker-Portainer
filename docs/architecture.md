# Architecture

## Design Objectives

The Docker platform was designed to:

- Centralize containerized services
- Simplify deployment and maintenance
- Separate application data from container layers
- Keep management interfaces private
- Support both public and internal services
- Reduce unnecessary port exposure
- Provide a practical environment for learning Docker administration

## Logical Architecture

```text
Proxmox VE
└── Debian LXC
    ├── Docker Engine
    ├── Docker Compose
    ├── Portainer
    ├── React Portfolio
    ├── InvoiceShelf + PostgreSQL
    ├── Additional Services
    ├── Docker Networks
    └── Persistent Storage
```

## Management Layer

Portainer provides a web-based interface for the local Docker Engine.

Administrative operations include:

- Starting and stopping containers
- Reviewing logs
- Managing stacks
- Inspecting networks
- Inspecting volumes
- Reviewing container resource usage

## Application Layer

Applications are deployed as individual containers or Docker Compose stacks.

Public applications are published through a secure tunnel.

Private applications remain available only from the internal network or through a secure remote-access method.

## Storage Layer

Persistent data is stored outside the writable container layer.

This makes it possible to:

- Recreate containers without losing data
- Back up data separately
- Upgrade images more safely
- Separate application binaries from user data
