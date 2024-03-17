# Docker
---
**Docker** is a containerization platform that encapsulates an application and its dependencies into a container, ensuring consistent operation across different computing environments. It leverages OS-level virtualization to deliver software in packages called containers, providing isolation and resource efficiency, and facilitates CI/CD practices by streamlining deployment and scaling.

## Installation

### Install Docker Engine

One click installation script:

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

Run docker as non root user:

```bash
sudo groupadd docker
sudo usermod -aG docker $USER
```

## Using Docker

### Running containers

| Command                  | Description                               |
| ------------------------ | ----------------------------------------- |
| `docker run <image>`     | Start a new container from an image       |
| `docker run -it <image>` | Start a new container in interactive mode |
| `docker create <image>`  | Create a new container from the image     |