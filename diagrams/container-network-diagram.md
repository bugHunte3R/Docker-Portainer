# Container Network Diagram

```mermaid
flowchart LR
    Tunnel[Cloudflare Tunnel]
    WebNet[Web Network]
    InternalNet[Internal Network]
    MgmtNet[Management Network]

    Portfolio[Portfolio]
    Portainer[Portainer]
    Invoice[InvoiceShelf + PostgreSQL]
    Supporting[Supporting Services]

    Tunnel --> WebNet
    WebNet --> Portfolio
    MgmtNet --> Portainer
    InternalNet --> Invoice
    InternalNet --> Supporting
```
