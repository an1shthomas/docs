# Docker compose :simple-docker:

---

![docker.webp](../../images/docker-compose.png)

## Networking

By default docker-compose will create a new network for the given compose file. You can change the behavior by defining the custom networks in your compose file.

### Create and assign custom network

```yaml
networks: custom-network

services:
  app:
    networks:
      - custom-network
```

### Using existing networks

If you want to use an existing Docker network for your compose files, you can add `external: true` parameter in your compose file.

```yaml
networks:
  existing-network:
    external: true
```
