# Deployment Flow

```mermaid
flowchart LR
    Source[Source Code]
    Compose[Docker Compose]
    Build[Image Build]
    Deploy[Container Deployment]
    Verify[Health and Log Verification]

    Source --> Compose
    Compose --> Build
    Build --> Deploy
    Deploy --> Verify
```
