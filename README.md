# docker-autoprune

Docker image which runs `docker system prune` on a repeated interval.

## Usage

### Docker Compose

```yaml
services:
  app:
    image: decentralize/docker-autoprune:0.1.1
    init: true
    environment:
      - SLEEP_TIME=3600
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock:ro
```

### Docker Swarm Mode

```yaml
version: "3.7"

services:
  app:
    image: decentralize/docker-autoprune:0.1.1
    init: true
    environment:
      - SLEEP_TIME=3600
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock:ro
    deploy:
      mode: global
```

### Options

* `SLEEP_TIME`: time to wait between each run, in seconds
