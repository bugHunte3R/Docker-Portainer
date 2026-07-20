# Monitoring and Maintenance

## Docker Checks

```bash
docker ps
docker stats
docker system df
docker network ls
docker volume ls
```

## Compose Checks

```bash
docker compose ps
docker compose logs --tail=100
docker compose config
```

## Host Checks

```bash
systemctl status docker
journalctl -u docker --since today
df -h
free -h
uptime
```

## Maintenance Routine

- Review failed containers
- Review storage usage
- Review application logs
- Check image updates
- Verify restart policies
- Verify public application access
- Test backups periodically
- Remove unused resources carefully
