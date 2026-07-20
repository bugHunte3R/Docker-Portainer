# Architecture Diagram

```mermaid
flowchart TB
    Proxmox[Proxmox VE]
    LXC[Debian LXC]
    Docker[Docker Engine]
    Portainer[Portainer]
    Portfolio[React Portfolio]
    UniFi[UniFi Network Application]
    Other[Additional Services]

    Proxmox --> LXC
    LXC --> Docker
    Docker --> Portainer
    Docker --> Portfolio
    Docker --> UniFi
    Docker --> Other
```
