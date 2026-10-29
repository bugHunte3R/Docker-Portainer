# Architecture Diagram

```mermaid
flowchart TB
    Proxmox[Proxmox VE]
    LXC[Debian LXC]
    Docker[Docker Engine]
    Portainer[Portainer]
    Portfolio[React Portfolio]
    Invoice[InvoiceShelf + PostgreSQL]
    Other[Additional Services]

    Proxmox --> LXC
    LXC --> Docker
    Docker --> Portainer
    Docker --> Portfolio
    Docker --> Invoice
    Docker --> Other
```
